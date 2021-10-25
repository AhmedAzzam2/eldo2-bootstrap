from django.contrib import admin
from .models import Topic,Category,CommentT,favTopic
from modeltranslation.admin import TranslationAdmin, TranslationTabularInline

class ThemeAdmin(TranslationAdmin):
    model = Topic
    

admin.site.register(Topic, ThemeAdmin)

admin.site.register(Category)
admin.site.register(favTopic)
admin.site.register(CommentT)