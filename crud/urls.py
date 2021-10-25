 
from django.urls import path
from . import views

from  .views import PostCreateView,PostUpdateView,PostDeleteView,  catCreateView,catUpdateView,catDeleteView 
 
 

app_name = 'crud'

urlpatterns = [
    path('all/', views.userprofile, name='all'), 
    path('new/', PostCreateView.as_view(), name='new_post'), 
    path('<slug:pk>/update/', PostUpdateView.as_view(), name='post-update'),
    path('<slug:pk>/delete/', PostDeleteView.as_view(), name='post-delete'),

    path('cat/all/', views.catUserprofile, name='all-cat'), 
    path('cat/new/', catCreateView.as_view(), name='new-cat'), 
    path('cat/<slug:pk>/update/', catUpdateView.as_view(), name='cat-update'),
    path('cat/<slug:pk>/delete/', catDeleteView.as_view(), name='cat-delete'),
]
