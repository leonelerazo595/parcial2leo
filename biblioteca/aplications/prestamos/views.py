from django.shortcuts import render
from django.views.generic import TemplateView, ListView,CreateView,UpdateView
from .models import Prestamos

# Create your views here.

class PruebaCreateView(CreateView):
    template_name = "addPrestamo.html"
    model=Prestamos
    fields=('__all__')
    success_url= '.'

class MostrarPrestamos(ListView):
    #coche=CochesVendidos.objects.prefetch_related()
    template_name = "mostrarPrestamo.html"
    context_object_name = 'listar'
    model = Prestamos
    fields = ('_all_')

class PrestamoUpdate(UpdateView):
    template_name = "actualizarPrestamo.html"
    model=Prestamos
    fields=('__all__')
    success_url='/mostrarPrestamo'
      
