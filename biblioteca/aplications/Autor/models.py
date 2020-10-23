from django.db import models
from aplications.libro.models import Libro
# Create your models here.
class Autor(models.Model):
    
    IDAutor=models.IntegerField()
    #IDLibro=models.ForeignKey(Libro, on_delete=models.CASCADE)
    Nombre=models.CharField(max_length=100)
    Nacionalidad=models.CharField(max_length=100)
   
   
    def __str__(self):
        return str(self.IDAutor)