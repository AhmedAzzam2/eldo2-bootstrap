from django.shortcuts import render, redirect, get_object_or_404

from django.views.generic import ListView, CreateView, UpdateView, DeleteView
from django.contrib.auth.mixins import LoginRequiredMixin, UserPassesTestMixin

from django.contrib.auth.models import User

from blog.models import Category, Comment, Post  
from .forms import PostForm,catForm
# Create your views here.


import requests
from django.core.files.base import ContentFile



from django.utils.decorators import method_decorator


def notLoggedUsers(view_func):
    def wrapper_func(request, *args, **kwargs):
        if request.user.is_authenticated and not request.user.profile.dr:
            return redirect('/')
        else:
            return view_func(request,*args,**kwargs)
    return wrapper_func


@method_decorator(notLoggedUsers, name='dispatch')
class PostCreateView(LoginRequiredMixin, CreateView):
    model = Post
    template_name = 'crud/new_post.html'
    form_class =  PostForm

    def form_valid(self, form):
        form.instance.author = self.request.user
        if self.request.POST['imageUrl']:
                
            url = self.request.POST['imageUrl'] 
            response = requests.get(url, stream=True) 
            form.instance.image.save('0jot2.jpg', ContentFile(response.content))

        return super().form_valid(form)


@method_decorator(notLoggedUsers, name='dispatch')
class PostUpdateView(UserPassesTestMixin, LoginRequiredMixin, UpdateView):
    model = Post
    template_name = 'crud/post_update.html'
    form_class =  PostForm
    
    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)

    def test_func(self):
        post = self.get_object()
        if self.request.user == post.author:
            return True
        else:
            return False


@method_decorator(notLoggedUsers, name='dispatch')
class PostDeleteView(UserPassesTestMixin, LoginRequiredMixin, DeleteView):
    model = Post
    success_url = '/'

    template_name = 'crud/post_confirm_delete.html'

    def test_func(self):
        post = self.get_object()
        if self.request.user == post.author:
            return True
        else:
            return False

@method_decorator(notLoggedUsers, name='dispatch')
class catCreateView(LoginRequiredMixin, CreateView):
    model = Category
    template_name = 'crud/new_cat.html'
    form_class =  catForm

    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)


@method_decorator(notLoggedUsers, name='dispatch')
class catUpdateView(UserPassesTestMixin, LoginRequiredMixin, UpdateView):
    model = Category
    template_name = 'crud/cat_update.html'
    form_class =  catForm
    
    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)

    def test_func(self):
        cat = self.get_object()
        if self.request.user != cat.name:
            return True
        else:
            return False


@method_decorator(notLoggedUsers, name='dispatch')
class catDeleteView(UserPassesTestMixin, LoginRequiredMixin, DeleteView):
    model = Category
    success_url = '/'

    template_name = 'crud/cat_confirm_delete.html'

    def test_func(self):
        cat = self.get_object()
        if self.request.user != cat.name:
            return True
            # return redirect('index')
        else:
            return False

# class Profile(DetailView):
#     template_name = 'crud/index.html'
#     queryset = User.objects.all()
#     def get_object(self):
#         id_ = self.kwargs.get("username")
#         user = get_object_or_404(User, username=id_)
#         return user

from django.core.paginator import EmptyPage, PageNotAnInteger, Paginator

def userprofile(request):
    user = request.user
    all_posts = Post.objects.filter(author=request.user) 
    paginator = Paginator(all_posts, 20) # Show 25 contacts per page.

    page_number = request.GET.get('page')
    user_posts = paginator.get_page(page_number)
    template = 'crud/index.html'
    return render(request, template, {'user_posts':user_posts,'user': user})

def catUserprofile(request):
    user = request.user
    all_posts = Category.objects.all() 
    paginator = Paginator(all_posts, 20) # Show 25 contacts per page.

    page_number = request.GET.get('page')
    user_posts = paginator.get_page(page_number)
    template = 'crud/catIndex.html'
    return render(request, template, {'user_posts':user_posts,'user': user})

