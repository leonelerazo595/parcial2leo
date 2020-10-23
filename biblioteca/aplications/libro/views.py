from django.shortcuts import render

from django.views.generic import TemplateView, ListView,CreateView,UpdateView
from .models import Libro

# Create your views here.




class PruebaCreateView(CreateView):
    template_name = "add.html"
    model=Libro
    fields=('__all__')
    success_url= '.'

class MostrarLibros(ListView):
    template_name = "mostrarlibros.html"
    context_object_name = 'listar'
    model = Libro
    fields = ('_all_')

class LibroUpdate(UpdateView):
    template_name = "actualizarLibro.html"
    model=Libro
    fields=('__all__')
    success_url='/mostrarlibros'
      