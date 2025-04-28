from django.urls import path
from .views import PostListCreate, PostDetailUpdate

urlpatterns = [
    # list all posts / create a new post
    path('posts/', PostListCreate.as_view(), name='post-list-create'),
    # retrieve a single post / update it
    path('posts/<int:pk>/', PostDetailUpdate.as_view(), name='post-detail-update'),
]