from django import template
from blog.models import Category,Post, Page 

from django.contrib.auth.models import User


register = template.Library()
@register.inclusion_tag('blog/latest_posts.html',takes_context=True)
def latest_posts(context):
    request = context['request']
    LANGUAGE_CODE = context.request.LANGUAGE_CODE
    context = {
        'l_posts': Category.objects.filter(languageCode = LANGUAGE_CODE )[0:15],
    }
    return context
  
@register.inclusion_tag('blog/v_posts.html',takes_context=True)
def latest_posts1(context):
    request = context['request']
    LANGUAGE_CODE = context.request.LANGUAGE_CODE
    context = {
        'l_posts': Post.objects.filter( languageCode = LANGUAGE_CODE  ).order_by('-views')[0:9],
    }
    return context
    
    
@register.inclusion_tag('blog/pageTag.html',takes_context=True)
def pageTag(context):
    request = context['request']
    LANGUAGE_CODE = context.request.LANGUAGE_CODE
    context = {
        'page': Page.objects.all()[0:15],
    }
    return context
  

@register.inclusion_tag('blog/silder.html',takes_context=True)
def silder(context):
    request = context['request']
    LANGUAGE_CODE = context.request.LANGUAGE_CODE
    context = {
        'l_posts': Category.objects.filter(languageCode = LANGUAGE_CODE )[0:15],
    }
    return context
   
@register.filter
def get_name(value):
    spam = value.split('/')[-1]         # assume value be /python/web-scrapping
                                        # spam would be 'web-scrapping'
    spam = ' '.join(spam.split('-'))    # now spam would be 'web scrapping'
    return spam