 
from django.urls import path
from django.conf.urls import url 
from . import views
from django.contrib.sitemaps.views import sitemap

from .sitemaps import VideoSitemap, PostSitemap

videoSitemap = {
    'posts': VideoSitemap
}
postSitemap = {
    'posts': PostSitemap
}


app_name = 'blog'

urlpatterns = [
    path('', views.home, name='homepage'), 
    path('search/', views.post_search, name='post_search'),
    path('articles/<slug:post>/', views.post_single, name='post_single'),
    path('@<slug:slug>', views.post_user, name='post_user'),
    path('videos', views.videos, name='videos'),
    path('video/<slug:post>/', views.post_single, name='video_single'),
    # path('category/<category>/', views.CatListView.as_view(), name='category'),
    url(r'^a/(?P<hierarchy>.+)/$', views.show_category, name='category'),
    # url(r'^(?P<slug>[\w-]+)/$', views.post_detail, name="detail"),
    path('bodyOrgans/<bodyOrgans>/', views.bodyOrgans.as_view(), name='bodyOrgans'),
    path('page/<page>/', views.page.as_view(), name='page'), 
    path('video-sitemap.xml', sitemap, {'sitemaps': videoSitemap,'template_name': 'blog/video-sitemap.html'}, name='sitemap'),
    path('sitemap.xml', sitemap, {'sitemaps': postSitemap}, name='django.contrib.sitemaps.views.sitemap')
     

]
