
from django.contrib import admin
from django.urls import path

from.import views
#app_name="cliente_app"
urlpatterns = [
     path('addLibro/', views.PruebaCreateView.as_view()),
    path('mostrarLibro/', views.MostrarLibros.as_view()),
     path('UpdateLibro/<pk>/', views.LibroUpdate.as_view()),
]