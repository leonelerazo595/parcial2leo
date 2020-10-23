from django.contrib import admin
from django.urls import path

from.import views
#app_name="cliente_app"
urlpatterns = [
     path('addPrestamo/', views.PruebaCreateView.as_view()),
    path('mostrarPrestamo/', views.MostrarPrestamos.as_view()),
    path('UpdatePrestamo/<pk>/', views.PrestamoUpdate.as_view()),
]