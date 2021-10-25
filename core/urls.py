from django.contrib import admin
from django.urls import path, include,re_path
from django.conf import settings
from django.conf.urls.static import static
from django.conf.urls import url
from django.conf.urls.i18n import i18n_patterns
from blog import views
urlpatterns =[
    path('i18n', include('django.conf.urls.i18n')),
]

urlpatterns += i18n_patterns(
    path('admin/', admin.site.urls),
    path('account/', include('accounts.urls', namespace='accounts')),
    path('account/', include('django.contrib.auth.urls')),
    path('accounts/', include('allauth.urls')), 
    path('', include('blog.urls', namespace='blog')),  
    path('discussion/',include('boards.url', namespace='boards')),
    path('crud/', include('crud.urls', namespace='crud')),
    path('services/', include('services.urls', namespace='services')),
    path('summernote/', include('django_summernote.urls')),
    path('ckeditor/', include('ckeditor_uploader.urls')),
    path('tinymce/', include('tinymce.urls')),
    url(r'^robots\.txt', include('robots.urls')),
    re_path(r'^rosetta/', include('rosetta.urls'))

)

urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)