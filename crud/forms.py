from django import forms
from froala_editor.widgets import FroalaEditor

from blog.models import Post, Category

from django_summernote.widgets import SummernoteWidget, SummernoteInplaceWidget
from mptt.models import MPTTModel, TreeForeignKey


class PostForm(forms.ModelForm):
    # content = forms.CharField(widget=FroalaEditor(theme='dark', options={

    # }))
    content = forms.CharField(widget=SummernoteInplaceWidget())

    class Meta:
        model = Post
        # fields = '__all__'
        fields = ['category', 'video_or_article', 'title', 'video_url','video_duration',
                  'content', 'image', 'status', 'excerpt', 'tags', 'slug']

        widgets = {
            'category': forms.Select(attrs={'class': 'custom-select col-12 shadowX'}),
            'video_or_article': forms.Select(attrs={'class': 'custom-select col-12 shadowX', 'onchange': 'myFunV()'}),
            'status': forms.Select(attrs={'class': 'custom-select col-12 shadowX '}),
            'title': forms.TextInput(attrs={'class': 'form-control col-12 shadowX'}),
            'content': FroalaEditor(attrs={'class': 'form-control col-12 shadowX'}),
            'excerpt': forms.Textarea(attrs={'class': 'form-control col-12 shadowX'}),
            'slug': forms.TextInput(attrs={'class': 'form-control col-12 shadowX'}),
            'tags': forms.TextInput(attrs={'data-role': 'tagsinput'}),
            'image': forms.FileInput(attrs={'onchange': 'upload_img(this);','class': 'form-control col-12 shadowX'}),
            'video_url': forms.TextInput(attrs={'class': 'form-control col-12 shadowX'}),
            'video_duration': forms.TextInput(attrs={'class': 'form-control col-12 shadowX'}),
        }


class catForm(forms.ModelForm):
    # description = forms.CharField(widget=FroalaEditor(theme='dark', options={

    # }))
    description = forms.CharField(widget=SummernoteInplaceWidget())

    class Meta:
        model = Category
        # fields = '__all__'
        fields = ['name',  'parent', 'excerpt', 'image', 'description', 'tags', 'slug']

        widgets = {
            'name': forms.TextInput(attrs={'class': 'custom-select col-12 shadowX'}),
            'parent': forms.Select(attrs={'class': 'custom-select col-12 shadowX '}),
            'image': forms.FileInput(attrs={'onchange': 'upload_img(this);'}),
            'slug': forms.TextInput(attrs={'class': 'form-control col-12 shadowX'}),
            'tags': forms.TextInput(attrs={'data-role': 'tagsinput'}),
        }
