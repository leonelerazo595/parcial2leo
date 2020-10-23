from django.db import models

# Create your models here.
class Usuario(models.Model):
    
    IDUsuario=models.IntegerField()
    NumUsuario=models.IntegerField()
    NIF=models.CharField(max_length=100)
    Nombre=models.CharField(max_length=50)
    Direccion=models.CharField(max_length=100)
    Telefono=models.CharField(max_length=100)
   
   
    def __str__(self):
        return str(self.IDUsuario)