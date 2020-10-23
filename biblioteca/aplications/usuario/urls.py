from django.contrib import admin
from django.urls import path

from.import views
#app_name="cliente_app"
urlpatterns = [
    path('addUsuario/', views.PruebaCreateView.as_view()),
    path('mostrarUsuario/', views.MostrarUsuario.as_view()),
   #  path('UpdatePrestamo/<pk>/', views.UsuarioUpdate.as_view()),
]