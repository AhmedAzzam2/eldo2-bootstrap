from django.db import models
from django.utils import timezone
from django.db.models.signals import post_save
from django.contrib.auth.models import User
from django.dispatch import receiver
from django.core.exceptions import ValidationError
from django.core.files.images import get_image_dimensions

import random
import string 

def rand_slug(size=6):
    return ''.join(random.choice(string.ascii_letters + string.digits) for _ in range( size ))



def user_directory_path(instance, filename):
    return 'users/avatars/{0}/{1}'.format(instance.user.id, filename)


class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    follow = models.ManyToManyField( User, related_name='followUser', default=None, blank=True)
    avatar = models.ImageField( upload_to=user_directory_path, default='users/avatar.png')
    bio = models.TextField(max_length=5500, blank=True)
    fullName = models.CharField(max_length=221, blank=True, default=rand_slug(5) )
    dr = models.BooleanField( default=False )
    slug = models.SlugField(max_length=250, unique=True, blank=True, default=rand_slug(8))

    facebook = models.URLField(max_length=222, blank=True)
    twitter = models.URLField(max_length=222, blank=True)
    # def clean(self):
    #     if not self.avatar:
    #         raise ValidationError("x")
    #     else:
    #         w, h = get_image_dimensions(self.avatar)
    #         if w != 200:
    #             raise ValidationError("x")
    #         if h != 200:
    #             raise ValidationError("x")

    def __str__(self):
        return self.user.username

@ receiver(post_save, sender=User)
def create_user_profile(sender, instance, created, **kwargs):
    if created:
        Profile.objects.create(user=instance)


class followUser(models.Model):
    profiles = models.ForeignKey(Profile, related_name='followfp',  on_delete=models.CASCADE, default=None, blank=True)
    avatar = models.ForeignKey(User, related_name='followidf', on_delete=models.CASCADE, default=None, blank=True)
    vote = models.BooleanField(default=True)
    publish = models.DateTimeField(default=timezone.now)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    def __str__(self):
        return self.avatar.username




# class contact(models.Model):
#     avatar = models.ForeignKey(User, related_name='contactID',  on_delete=models.CASCADE, default=None, blank=True)
#     content = models.TextField()
#     vote = models.BooleanField(default=True)
#     publish = models.DateTimeField(default=timezone.now)
#     created_at = models.DateTimeField(auto_now_add=True)
#     updated_at = models.DateTimeField(auto_now=True)
#     def __str__(self):
#         return self.avatar.username

# class contactMe(models.Model):
#     avatar = models.ForeignKey(User, related_name='contactMeID',  on_delete=models.CASCADE, default=None, blank=True)
#     receiver = models.ForeignKey(contact, related_name='contactMeID', on_delete=models.CASCADE, default=None, blank=True)
#     content = models.TextField()
#     vote = models.BooleanField(default=True)
#     publish = models.DateTimeField(default=timezone.now)
#     created_at = models.DateTimeField(auto_now_add=True)
#     updated_at = models.DateTimeField(auto_now=True)
#     def __str__(self):
#         return self.avatar.username




from django.contrib.sites.models import Site

class siteName(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    site = models.OneToOneField(Site, on_delete=models.CASCADE)

    nameHome = models.CharField(max_length=111, blank=True)
    imageHome = models.ImageField( upload_to=user_directory_path )
    bioHome = models.TextField(max_length=5500, blank=True)

    nameVideo = models.CharField(max_length=111, blank=True)
    imageVideo = models.ImageField( upload_to=user_directory_path )
    bioVideo = models.TextField(max_length=5500, blank=True)

    nameForum = models.CharField(max_length=111, blank=True)
    imageForum = models.ImageField( upload_to=user_directory_path )
    bioForum = models.TextField(max_length=5500, blank=True)
    def __str__(self):
        return self.nameHome