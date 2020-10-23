from django.shortcuts import render
from django.views.generic import TemplateView, ListView,CreateView,UpdateView
from .models import Usuario
# Create your views here.
class PruebaCreateView(CreateView):
    template_name = "addUsuario.html"
    model=Usuario
    fields=('__all__')
    success_url= '.'

class MostrarUsuario(ListView):
    template_name = "mostrarUsuarios.html"
    context_object_name = 'listar'
    model = Usuario
    fields = ('_all_')