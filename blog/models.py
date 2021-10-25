from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
from django.urls import reverse
from django.utils.text import slugify
from mptt.models import MPTTModel, TreeForeignKey
from taggit.managers import TaggableManager
from core.settings import LANGUAGES


def user_directory_path(instance, filename):
    return 'posts/%Y/%m/%d/'.format(instance.id, filename)


class Category(MPTTModel):
  name = models.CharField(max_length=50, unique=True)
  parent = TreeForeignKey('self', null=True, blank=True, related_name='children', db_index=True,on_delete=models.CASCADE)
  slug = models.SlugField(unique=True)
  slugLang = models.SlugField(max_length=250,blank=True, null=True )
  description = models.TextField() 
  excerpt = models.TextField()
  

  image = models.ImageField(
        upload_to='uploads/', default='posts/default.jpg')
  tags = TaggableManager()
  views = models.PositiveIntegerField(default=0)
  languageCode = models.CharField( max_length=10, choices=LANGUAGES,blank=True, null=True )
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
        

     
 

class bodyOrgans(MPTTModel):
    name = models.CharField(max_length=50, unique=True)
    parent = TreeForeignKey('self', on_delete=models.CASCADE, null=True, blank=True, related_name='children')
    slug = models.SlugField( null=True, blank=True)
    description = models.TextField(null=True, blank=True)
    image = models.ImageField(
        upload_to=user_directory_path, default='posts/default.jpg')
    tags = TaggableManager()
     
 
    class Meta:
        ordering = ('-name',)

    def __str__(self):
        return self.name
        

class diseases(MPTTModel):
    name = models.CharField(max_length=50, unique=True)
    parent = TreeForeignKey('self', on_delete=models.CASCADE, null=True, blank=True, related_name='children')
    slug = models.SlugField( null=True, blank=True)
    description = models.TextField(null=True, blank=True)
    image = models.ImageField(
        upload_to=user_directory_path, default='posts/default.jpg')
    tags = TaggableManager()
     
 
    class Meta:
        ordering = ('-name',)

    def __str__(self):
        return self.name
        



class langPost(models.Model):

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
    author = models.ForeignKey( User, on_delete=models.CASCADE, related_name='lan_post')
    def __str__(self):
        return self.title


class Post(models.Model):

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
    video_article = (
        ('article', 'article'),
        ('video', 'video'),
    ) 
    category = TreeForeignKey('Category', on_delete=models.CASCADE ) 
    title = models.CharField(max_length=250)
    excerpt = models.TextField()
    image = models.ImageField(
        upload_to='uploads/', default='posts/default.jpg')
    image_caption = models.CharField(max_length=100, default='El Doctor')
    slug = models.SlugField(max_length=250, unique=True)
    slugLang = models.SlugField(max_length=250,blank=True, null=True )
    publish = models.DateTimeField(default=timezone.now)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    author = models.ForeignKey(User, on_delete=models.CASCADE, related_name='blog_posts')
    content = models.TextField()
    languageName = models.ForeignKey( langPost, on_delete=models.CASCADE, related_name='lang_post', blank=True, null=True )
    languageCode = models.CharField( max_length=10, choices=LANGUAGES,blank=True, null=True )

    tags = TaggableManager()
    status = models.CharField(
        max_length=10, choices=options, default='published')
    pin = models.CharField(
        max_length=111, choices=pins, default='draft')
    video_or_article = models.CharField(
        max_length=111, choices=video_article, default='article')
    video_url = models.CharField( max_length=255, blank=True, null=True )
    video_duration = models.CharField( max_length=20, blank=True, null=True )
    # video_file= models.FileField(upload_to='videos/', null=True, verbose_name="")
        
    favourites = models.ManyToManyField( User, related_name='favourite', default=None, blank=True)
    likes = models.ManyToManyField(
        User, related_name='like', default=None, blank=True)
    like_count = models.BigIntegerField(default='0')
    views = models.PositiveIntegerField(default=0)
    nm = models.CharField(max_length=10, default='1') # get name model number


    thumbsup = models.IntegerField(default='0')
    thumbsdown = models.IntegerField(default='0')
    thumbs = models.ManyToManyField(User, related_name='thumbs', default=None, blank=True)

    objects = models.Manager()  # default manager
    newmanager = NewManager()  # custom manager

    def get_absolute_url(self):
        if 'article' in self.video_or_article :
            return reverse('blog:post_single', args=[self.slug])
        if 'video' in self.video_or_article :
            return reverse('blog:video_single', args=[self.slug])


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


class Comment(MPTTModel):
    post = models.ForeignKey(Post,
                             on_delete=models.CASCADE,
                             related_name='comments')
    name = models.CharField(max_length=50)
    parent = TreeForeignKey('self', on_delete=models.CASCADE,
                            null=True, blank=True, related_name='children')
    email = models.EmailField()
    content = models.TextField()
    publish = models.DateTimeField(auto_now_add=True)
    status = models.BooleanField(default=True)

    class MPTTMeta:
        order_insertion_by = ['publish']

    def __str__(self):
        return self.name


class Vote(models.Model):

    post = models.ForeignKey(Post, related_name='postid',
                             on_delete=models.CASCADE, default=None, blank=True)
    user = models.ForeignKey(User, related_name='userid',
                             on_delete=models.CASCADE, default=None, blank=True)
    vote = models.BooleanField(default=True)
    publish = models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return self.post
        

class favPost(models.Model):

    post = models.ForeignKey(Post, related_name='postfv', on_delete=models.CASCADE, default=None, blank=True)
    user = models.ForeignKey(User, related_name='userfv', on_delete=models.CASCADE, default=None, blank=True)
    vote = models.BooleanField(default=True)
    publish = models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return self.post


class Page(MPTTModel):
    title = models.CharField(max_length=50, unique=True)
    parent = TreeForeignKey('self', on_delete=models.CASCADE, null=True, blank=True, related_name='children')
    slug = models.SlugField( null=True, blank=True)
    description = models.TextField(null=True, blank=True)
    image = models.ImageField(
        upload_to=user_directory_path, default='page/default.jpg')
     

    def get_absolute_url(self):
        return reverse('/', args=[self.slug])

    class Meta:
        ordering = ('-title',)

    def __str__(self):
        return self.title

        
