from django.urls import path
from . import views
app_name = 'Boards'
urlpatterns = [
    path('',views.home,name='home'),
    path('ask/<slug:post>/', views.topic_single, name='topic_single'), 
    path('fav/<int:id>/', views.favourite_add, name='favourite_add'),
    path('addcomment/', views.addcomment, name='addcomment'),
    path('addTopic/', views.addTopic, name='addTopic'),
    path('like/', views.like, name='like'),
    path('<slug:pk>/update/', views.PostUpdateView.as_view(), name='post-update'),
    path('<slug:pk>/delete/', views.PostDeleteView.as_view(), name='post-delete'),

    # path('Topics/<int:Topic_id>/',views.Topic_topics,name='Topic_topics'),
    # path('Topics/<int:Topic_id>/new/',views.new_topic,name='new_topic'),
    # path('Topics/<int:Topic_id>/topics/<int:topic_id>', views.topic_posts, name='topic_posts'),
    # path('Topics/<int:Topic_id>/topics/<int:topic_id>/reply/', views.reply_topic, name='reply_topic'),
    # path('Topics/<int:Topic_id>/topics/<int:topic_id>/posts/<int:post_id>/edit/', views.TopicUpdateView.as_view(), name='edit_post'),

]


 