from modeltranslation.translator import register, TranslationOptions
from .models import Post

@register(Post)
class ThemeTranslationOptions(TranslationOptions):
    fields = ( )