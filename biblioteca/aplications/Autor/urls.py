from django.contrib import admin
from django.urls import path

from.import views
#app_name="cliente_app"
urlpatterns = [
     path('addAutor/', views.PruebaCreateView.as_view()),
    path('mostrarAutor/', views.MostrarAutor.as_view()),
]