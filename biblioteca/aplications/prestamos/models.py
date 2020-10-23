from django.db import models
from aplications.usuario.models import Usuario 
from aplications.libro.models import Libro
# Create your models here.
class Prestamos(models.Model):
    
    IDPrestamo=models.IntegerField()
    IDLibro=models.ForeignKey(Libro, on_delete=models.CASCADE)
    IDUsuario=models.ForeignKey(Usuario, on_delete=models.CASCADE)
    F_prestamo=models.CharField(max_length=100)
    F_devolucion=models.CharField(max_length=100)

    def __str__(self):
        return str(self.IDPrestamo)