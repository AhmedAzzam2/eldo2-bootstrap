from modeltranslation.translator import register, TranslationOptions
from .models import Topic

@register(Topic)
class ThemeTranslationOptions(TranslationOptions):
    fields = ( )
