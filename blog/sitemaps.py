from django.contrib.sitemaps import Sitemap
from .models import Post


class VideoSitemap(Sitemap):    
    changefreq = "always"
    priority = 0.9

    def items(self):
        return Post.objects.filter(status='published').filter(video_or_article='video')

    def lastmod(self, obj):
        return obj.publish


        
class PostSitemap(Sitemap):
        changefreq = "always"
        priority = 0.9

        def items(self):
                return Post.objects.filter(status='published').filter(video_or_article='article')

        def lastmod(self, obj):
                return obj.publish