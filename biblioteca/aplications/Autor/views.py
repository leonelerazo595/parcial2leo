from django.shortcuts import render

from django.views.generic import TemplateView, ListView,CreateView,UpdateView
from .models import Autor

# Create your views here.




class PruebaCreateView(CreateView):
    template_name = "addAutor.html"
    model=Autor
    fields=('__all__')
    success_url= '.'

class MostrarAutor(ListView):
    #coche=CochesVendidos.objects.prefetch_related()
    template_name = "mostrarAutor.html"
    context_object_name = 'listar'
    model = Autor
    fields = ('_all_')

