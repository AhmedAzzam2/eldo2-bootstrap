from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
from django.urls import reverse
from django.utils.text import slugify
from mptt.models import MPTTModel, TreeForeignKey
from taggit.managers import TaggableManager

def user_directory_path(instance, filename):
    return 'topic/%Y/%m/%d/'.format(instance.id, filename)


class Category(MPTTModel):
  name = models.CharField(max_length=50, unique=True)
  parent = TreeForeignKey('self', null=True, blank=True, related_name='children', db_index=True,on_delete=models.CASCADE)
  slug = models.SlugField(unique=True)
  slugLang = models.SlugField(max_length=250,blank=True, null=True )
  description = models.TextField() 
  excerpt = models.TextField()
  image = models.ImageField(
        upload_to='uploads/', default='Topics/default.jpg')
  tags = TaggableManager(related_name='topic_cate')
  views = models.PositiveIntegerField(default=0)
  def get_absolute_url(self): 
   return '/'

  class MPTTMeta:
    order_insertion_by = ['name']

  class Meta:
    unique_together = (('parent', 'slug',))
    verbose_name_plural = 'categories'

  def get_slug_list(self):
    try:
      ancestors = self.get_ancestors(include_self=True)
    except:
      ancestors = []
    else:
      ancestors = [ i.slug for i in ancestors]
    slugs = []
    for i in range(len(ancestors)):
      slugs.append('/'.join(ancestors[:i+1]))
    return slugs


  def get_slug_list_for_categories(self):
    try:
        ancestors = self.get_ancestors(include_self=True)
    except:
        ancestors = []
        ancestors2 = []
    else:
        ancestors = [ i.slug for i in ancestors]
        ancestors2 = [ i.name for i in self.get_ancestors(include_self=True)]

    slugs = []
    slugs2 = { }

    for i in range(len(ancestors)):
        slugs.append('/'.join(ancestors[:i+1]))
        slugs2 [ '/'.join(ancestors[:i+1]) ] = '/'.join(ancestors2[:i+1])
    return slugs2
    
  def get_url_categories(self):
    try:
        ancestors = self.get_ancestors(include_self=True)
    except:
        ancestors = []
        ancestors2 = []
    else:
        ancestors = [ i.slug for i in ancestors]
        ancestors2 = [ i.slug for i in self.get_ancestors(include_self=True)]
 
    return  '/a/'+ ( '/'.join(ancestors2[:len(ancestors)]) )


  def __str__(self):
     return self.name
        

     
 
        

from core.settings import LANGUAGES

class topicLang(models.Model):

    class NewManager(models.Manager):
        def get_queryset(self):
            return super().get_queryset() .filter(status='published')

    options = (
        ('draft', 'Draft'),
        ('published', 'Published'),
    )  
    title = models.CharField(max_length=250) 
    slug = models.SlugField(max_length=250, unique=True)
    publish = models.DateTimeField(default=timezone.now)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    author = models.ForeignKey( User, on_delete=models.CASCADE )
    def __str__(self):
        return self.title

class Topic(models.Model):

    class NewManager(models.Manager):
        def get_queryset(self):
            return super().get_queryset() .filter(status='published')

    options = (
        ('draft', 'Draft'),
        ('published', 'Published'),
    ) 
    pins = (
        ('draft', 'Draft'),
        ('home', 'home'),
        ('category', 'category'),
        ('videos', 'videos'),
    )  
    category = TreeForeignKey('Category', on_delete=models.CASCADE, null=True, blank=True)
    title = models.CharField(max_length=250)
    excerpt = models.TextField(default='0')
    image = models.ImageField(
        upload_to='uploads/', default='Topics/default.jpg')
    image_caption = models.CharField(max_length=100, default='El Doctor')
    slug = models.SlugField(max_length=250, unique=True)
    slugLang = models.SlugField(max_length=250,blank=True, null=True )
    publish = models.DateTimeField(default=timezone.now)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    author = models.ForeignKey(
        User, on_delete=models.CASCADE, related_name='blog_Topics')
    content = models.TextField()


    # tags = TaggableManager(related_name='topic_top' )
    languageName = models.ForeignKey( topicLang, on_delete=models.CASCADE, blank=True, null=True )
    languageCode = models.CharField( max_length=200, choices=LANGUAGES  ) 
    status = models.CharField(
        max_length=10, choices=options, default='published')
    pin = models.CharField(
        max_length=111, choices=pins, default='draft') 
    video_url = models.CharField( max_length=255, blank=True, null=True )
    video_duration = models.CharField( max_length=20, blank=True, null=True )
        
    favourites = models.ManyToManyField( User, related_name='favouriteT', default=None, blank=True)
    NotfFaV = models.ManyToManyField( User, related_name='NotfFaVe', default=None, blank=True)
    likes = models.ManyToManyField( User, related_name='likeT', default=None, blank=True)
    like_count = models.BigIntegerField(default='0')
    views = models.PositiveIntegerField(default=0)
    nm = models.CharField(max_length=10, default='2') # get name model number


    thumbsup = models.IntegerField(default='0')
    thumbsdown = models.IntegerField(default='0')
    thumbs = models.ManyToManyField(User, related_name='thumbsT', default=None, blank=True)

    objects = models.Manager()  # default manager
    newmanager = NewManager()  # custom manager

    def get_absolute_url(self): 
        return reverse('boards:topic_single', args=[self.slug]) 


    def get_slug_list_for_categories(self):
        try:
            ancestors = self.category.get_ancestors(include_self=True)
        except:
            ancestors = []
            ancestors2 = []
        else:
            ancestors = [ i.slug for i in ancestors]
            ancestors2 = [ i.name for i in self.category.get_ancestors(include_self=True)]

        slugs = []
        slugs2 = { }

        for i in range(len(ancestors)):
            slugs.append('/'.join(ancestors[:i+1]))
            slugs2 [ '/'.join(ancestors[:i+1]) ] = '/'.join(ancestors2[:i+1])
        return slugs2

    def get_url_categories(self):
        try:
            ancestors = self.category.get_ancestors(include_self=True)
        except:
            ancestors = []
            ancestors2 = []
        else:
            ancestors = [ i.slug for i in ancestors]
            ancestors2 = [ i.slug for i in self.get_ancestors(include_self=True)]

        return  '/a/'+ ( '/'.join(ancestors2[:len(ancestors)]) )


    class Meta:
        ordering = ('-publish',)

    def __str__(self):
        return self.title


class CommentT(MPTTModel):
    Topic = models.ForeignKey(Topic, on_delete=models.CASCADE, related_name='comments')
    author = models.ForeignKey( User, on_delete=models.CASCADE, related_name='author')
    parent = TreeForeignKey('self', on_delete=models.CASCADE, null=True, blank=True, related_name='children')
    NotfFaId = models.ManyToManyField( User, related_name='NotfFaVId', default=None, blank=True)
   
    content = models.TextField()
    publish = models.DateTimeField(auto_now_add=True)
    status = models.BooleanField(default=True)

    class MPTTMeta:
        order_insertion_by = ['publish']




class VoteT(models.Model):

    Topic = models.ForeignKey(Topic, related_name='Topicid',
                             on_delete=models.CASCADE, default=None, blank=True)
    user = models.ForeignKey(User, related_name='useridT',
                             on_delete=models.CASCADE, default=None, blank=True)
    vote = models.BooleanField(default=True)
    publish = models.DateTimeField(default=timezone.now)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)



class favTopic(models.Model):

    post = models.ForeignKey(Topic, related_name='topicfT', on_delete=models.CASCADE, default=None, blank=True)
    user = models.ForeignKey(User, related_name='useridfT', on_delete=models.CASCADE, default=None, blank=True)
    vote = models.BooleanField(default=True)
    publish = models.DateTimeField(default=timezone.now)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    def __str__(self):
        return self.post


class Notification(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE) 
    url = models.TextField(max_length=5500, blank=True)
    fullName = models.CharField(max_length=221, blank=True )
    dr = models.BooleanField( default=False )
    
    def __str__(self):
        return self.user.username
