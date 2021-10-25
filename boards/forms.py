from django import forms
from .models import CommentT, Category, Topic
from mptt.forms import TreeNodeChoiceField
from django_summernote.widgets import SummernoteWidget, SummernoteInplaceWidget
from ckeditor.widgets import CKEditorWidget

class NewTopicForm(forms.ModelForm):

    content = forms.CharField(widget=SummernoteInplaceWidget())
    # content = forms.CharField(widget=CKEditorWidget())

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        self.fields['author'].widget.attrs.update(
            {'class': 'd-none'})

        self.fields['author'].label = ''
        self.fields['author'].required = False
        self.fields['slug'].required = False

    class Meta:
        model = Topic
        fields = ('title','image', 'author', 'content','NotfFaV','slug')
        widgets = {
            'title': forms.Textarea(attrs={'class': 'ml-3 mb-3 form-control border-0 read-more rounded-0', 'rows': '1', 'placeholder': 'اضف تعلق'}),
        }

class NewCommentTForm(forms.ModelForm):
    parent = TreeNodeChoiceField(queryset=CommentT.objects.all())

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        self.fields['parent'].widget.attrs.update(
            {'class': 'd-none'})

        self.fields['parent'].label = ''
        self.fields['parent'].required = False

    class Meta:
        model = CommentT
        fields = ('Topic', 'parent', 'content','NotfFaId')

        widgets = {
            'content': forms.Textarea(attrs={'class': 'ml-3 mb-3 form-control border-0 read-more rounded-0', 'rows': '1', 'placeholder': 'اضف تعلق'}),
        }

    def save(self, *args, **kwargs):
        CommentT.objects.rebuild()
        return super(NewCommentTForm, self).save(*args, **kwargs)

