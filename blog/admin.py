
from django.contrib import admin 
from .models import *
from mptt.admin import MPTTModelAdmin
from django_summernote.admin import SummernoteModelAdmin

from modeltranslation.admin import TranslationAdmin, TranslationTabularInline
from mptt.admin import DraggableMPTTAdmin
from import_export.admin import ImportExportModelAdmin
# Apply summernote to all TextField in model.


class CategoryAdmin(DraggableMPTTAdmin,ImportExportModelAdmin): 
    pass

admin.site.register(Category, CategoryAdmin )

# @admin.register(Post)
# class AuthorAdmin(admin.ModelAdmin,SummernoteModelAdmin ):
#     list_display = ('title', 'id', 'status', 'slug', 'author')
#     prepopulated_fields = {'slug': ('title',), }

 
 


class PostAdmin(SummernoteModelAdmin,TranslationAdmin):
    model = Post
    list_display = ('title', 'id', 'status', 'slug', 'author')
    prepopulated_fields = {'slug': ('title',), }
    summernote_fields = ('content',)
admin.site.register(Post, PostAdmin)

admin.site.register(bodyOrgans)

admin.site.register(favPost )
admin.site.register(langPost)
admin.site.register(Vote)

admin.site.register(Comment, MPTTModelAdmin)



# class page(SummernoteModelAdmin):
    
#     list_display = ('title', 'id', 'slug' )
#     prepopulated_fields = {'slug': ('title',), }
#     summernote_fields = ('description',)
# admin.site.register(Page, page )
 
 
# class SomeModelAdmin0(SummernoteModelAdmin):  # instead of ModelAdmin
#     summernote_fields = '__all__'

# admin.site.register(Page, SomeModelAdmin0)


class PostAdmin1(SummernoteModelAdmin):
    summernote_fields = ('Description',)

admin.site.register(Page, PostAdmin1)