from django.urls import path
from . import views
from rest_framework.routers import DefaultRouter

urlpatterns = [
    path('genres/', views.GenreList.as_view(), name='genre_list'),
    path('genres/<int:pk>', views.GenreDetail.as_view(), name='genre_detail'),
    path('bassists/', views.BassistList.as_view(), name='bassist_list'),
    path('bassists/<int:pk>', views.BassistDetail.as_view(), name='bassist_detail'),
]