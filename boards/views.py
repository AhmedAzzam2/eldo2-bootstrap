from django.utils.crypto import get_random_string
from boards.models import Topic, VoteT
from django.shortcuts import render, get_object_or_404, redirect
from django.http import HttpResponse, Http404
from .models import Topic, Category, CommentT, Notification,favTopic
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required
from django.db.models import Count
from django.views.generic import CreateView, UpdateView, ListView
from django.utils import timezone
from django.utils.decorators import method_decorator
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from .forms import NewCommentTForm, NewTopicForm
from django.http import JsonResponse
from django.http import HttpResponseRedirect

# import requests
# from django.core.files.base import ContentFile


def home(request):
    # url = 'http://localhost:8000/media/uploads/557f08_39b458d87ba843d887bc8c09e127232cmv2.jpg'
    # urlx = 'http://localhost:8000/media/uploads/557f08_39b458d87ba843d887bc8c09e127232cmv2.jpg'.split('.')[1]
    # response = requests.get(url, stream=True)
    # topic = Topic(
    #     title='1hjb1',
    #     content='vf',
    #     slug='dddds',
    #     author=User.objects.first()
    # )
    # topic.image.save('0jot2.'.urlx, ContentFile(response.content))
    # topic.save()
    all_posts = Topic.objects.filter(languageCode = request.LANGUAGE_CODE )
    paginator = Paginator(all_posts, 2)  # Show 25 contacts per page.

    # for x in range(25):
    #     Topic(title="Test post {}".format(x), author = request.user, excerpt='add',content='hg',slug="Tpost{}".format(x)).save()

    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)

    topic_form = NewTopicForm()
    commall = CommentT.objects.filter().order_by('-publish')

    return render(request, 'forum/home.html', {'edd': page_obj, 'topic_form': topic_form, 'commall': commall})


def topic_single(request, post):

    post = get_object_or_404(Topic, slug=post, status='published')
    postcat = Topic.objects.filter(category=post.category)[0:9]

    fav = bool
    random_items = Topic.newmanager.all().order_by('?')[0:9]

    if post.favourites.filter(id=request.user.id).exists():
        fav = True

    session_key = 'view_post_{}'.format(post)
    if not request.session.get(session_key, False):
        post.views += 1
        post.save()
        request.session[session_key] = True

    allcomments = post.comments.filter(status=True)
    if request.user.is_authenticated:
        for e in allcomments:
            CommentT.objects.get(id=e.pk).NotfFaId.add(request.user)

    comment_form = NewCommentTForm()

    return render(request, 'forum/detail.html', {'post': post, 'comment_form': comment_form, 'allcomments': allcomments,
                                                 'random_items': random_items,
                                                 'Category': Category.objects.all(), 'Category2': postcat,
                                                 'fav': fav})


def addcomment(request):

    if request.method == 'POST':

        if request.POST.get('action') == 'delete':
            id = request.POST.get('nodeid')
            c = CommentT.objects.get(id=id)
            c.delete()
            return JsonResponse({'remove': id})
        else:
            comment_form = NewCommentTForm(request.POST)
            # print(comment_form)
            if comment_form.is_valid():
                user_comment = comment_form.save(commit=False)
                result = comment_form.cleaned_data.get('content')
                user = request.user.username
                user_comment.author = request.user
                # user_comment.NotfFaId.set( request.user )
                user_comment.save()
                Topic.objects.get(id=request.POST.get(
                    'Topic')).NotfFaV.add(request.user)
                CommentT.objects.get(
                    id=user_comment.id).NotfFaId.add(request.user)
                return JsonResponse({'result': result, 'user': user, 'id': user_comment.id})


def addTopic(request):

    if request.method == 'POST':

        if request.POST.get('action') == 'delete':
            id = request.POST.get('nodeid')
            c = Topic.objects.get(id=id)
            c.delete()
            return JsonResponse({'remove': id})
        else:
            Topic_form = NewTopicForm(request.POST, request.FILES)
            if Topic_form.is_valid():
                user_Topic = Topic_form.save(commit=False)
                result = Topic_form.cleaned_data.get('content')
                user = request.user.username
                user_Topic.languageCode = request.LANGUAGE_CODE
                user_Topic.author = request.user
                user_Topic.slug = get_random_string(length=8)
                user_Topic.save()
                Topic.objects.get(id=user_Topic.id).NotfFaV.add(request.user)
                return JsonResponse({'url': user_Topic.slug, 'result': user_Topic.title, 'user': user, 'image': user_Topic.image.url, 'id': user_Topic.id})


from django.views.generic import ListView, CreateView, UpdateView, DeleteView
from django.contrib.auth.mixins import LoginRequiredMixin, UserPassesTestMixin

class PostUpdateView(UserPassesTestMixin, LoginRequiredMixin, UpdateView):
    model = Topic
    template_name = 'forum/topic_update.html'
    form_class =  NewTopicForm
    
    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)

    def test_func(self):
        post = self.get_object()
        if self.request.user == post.author:
            return True
        else:
            return False


class PostDeleteView(UserPassesTestMixin, LoginRequiredMixin, DeleteView):
    model = Topic
    success_url = '/'

    template_name = 'forum/topic_confirm_delete.html'

    def test_func(self):
        post = self.get_object()
        if self.request.user == post.author:
            return True
        else:
            return False

 


@ login_required
def favourite_add(request, id):
    post = get_object_or_404(Topic, id=id)
    if post.favourites.filter(id=request.user.id).exists():
        post.favourites.remove(request.user)
        favTopic.objects.get(user=request.user,post=post ).delete()
    else:
        post.favourites.add(request.user)
        favTopic.objects.create(user=request.user,post=post ).save()
    return HttpResponseRedirect(request.META['HTTP_REFERER'])


@ login_required
def like(request):
    if request.POST.get('action') == 'post':
        result = ''
        id = int(request.POST.get('postid'))
        post = get_object_or_404(Topic, id=id)
        if post.likes.filter(id=request.user.id).exists():
            post.likes.remove(request.user)
            post.like_count -= 1
            result = post.like_count
            post.save()
        else:
            post.NotfFaV.add(request.user)
            post.likes.add(request.user)
            post.like_count += 1
            result = post.like_count
            post.save()

        return JsonResponse({'result': result, })


# class addTopic(CreateView):
#     model = Topic
#     template_name = "forum/home.html"
#     fields = ('title', 'image', 'content','author',)


# class TopicListView(ListView):
#     model = Topic
#     context_object_name = 'Topics'
#     template_name = 'home.html'


# def Topic_topics(request,Topic_id):

#     Topic = get_object_or_404(Topic,pk=Topic_id)
#     queryset = Topic.topics.order_by('-created_dt').annotate(comments=Count('posts'))
#     page = request.GET.get('page',1)
#     paginator = Paginator(queryset,20)
#     try:
#         topics = paginator.page(page)
#     except PageNotAnInteger:
#         topics = paginator.page(1)
#     except EmptyPage:
#         topics = paginator.page(paginator.num_pages)

#     return render(request,'topics.html',{'Topic':Topic,'topics':topics})


# @login_required
# def new_topic(request,Topic_id):
#     Topic = get_object_or_404(Topic,pk=Topic_id)
#     # user = User.objects.first()
#     if request.method == "POST":
#         form =NewTopicForm(request.POST)
#         if form.is_valid():
#             topic = form.save(commit=False)
#             topic.Topic = Topic
#             topic.created_by = request.user
#             topic.save()

#             post = Topic.objects.create(
#                 message=form.cleaned_data.get('message'),
#                 created_by = request.user,
#                 topic=topic

#             )
#             return redirect('Topic_topics',Topic_id=Topic.pk)
#     else:
#         form = NewTopicForm()

#     return render(request,'new_topic.html',{'Topic':Topic,'form':form})


# def topic_posts(request,Topic_id,topic_id):
#     topic = get_object_or_404(Topic,Topic__pk=Topic_id,pk=topic_id)

#     session_key = 'view_topic_{}'.format(topic.pk)
#     if not request.session.get(session_key,False):
#         topic.views +=1
#         topic.save()
#         request.session[session_key] = True
#     return render(request,'topic_posts.html',{'topic':topic})


# @login_required
# def reply_topic(request, Topic_id,topic_id):
#     topic = get_object_or_404(Topic,Topic__pk=Topic_id,pk=topic_id)
#     if request.method == "POST":
#         form =TopicForm(request.POST)
#         if form.is_valid():
#             post = form.save(commit=False)
#             post.topic = topic
#             post.created_by = request.user
#             post.save()

#             topic.updated_by = request.user
#             topic.updated_dt = timezone.now()
#             topic.save()

#             return redirect('topic_posts',Topic_id=Topic_id, topic_id = topic_id)
#     else:
#         form = TopicForm()
#     return render(request,'reply_topic.html',{'topic':topic,'form':form})


# @method_decorator(login_required,name='dispatch')
# class TopicUpdateView(UpdateView):
#     model = Topic
#     fields = ('message',)
#     template_name = 'edit_post.html'
#     pk_url_kwarg = 'post_id'
#     context_object_name = 'post'

#     def form_valid(self, form):
#         post = form.save(commit=False)
#         post.updated_by = self.request.user
#         post.updated_dt = timezone.now()
#         post.save()
#         return redirect('topic_posts',Topic_id=post.topic.Topic.pk,topic_id=post.topic.pk)
