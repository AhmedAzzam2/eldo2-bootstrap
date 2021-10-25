from django import template
from boards.models import Category,Topic,CommentT
from blog.models import Post


register = template.Library()
@register.inclusion_tag('forum/notf.html',takes_context=True)
def Notification(context):
    request = context['request']
    user = context.request.user
    context = { 'Notification': CommentT.objects.filter( Topic__NotfFaV=user ).order_by('-publish').exclude(NotfFaId= user),'user':user }
    return context


@register.inclusion_tag('forum/v_posts.html',takes_context=True)
def latest_posts1(context):
    request = context['request']
    LANGUAGE_CODE = context.request.LANGUAGE_CODE
    context = {
        'l_posts': Post.objects.filter(languageCode = LANGUAGE_CODE ).order_by('-views')[0:9],
    }
    return context
    
    
# @register.filter()
# def low(value):
#     @register.inclusion_tag('forum/notf.html')
#     def Notification2():
#         context = { 'Notification': CommentT.objects.filter(  ).order_by('-publish'), }
#         return context

#     return Notification2
