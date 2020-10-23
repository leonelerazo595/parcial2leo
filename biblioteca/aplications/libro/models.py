from django.db import models

# Create your models here.
class Libro(models.Model):
    
    IDlibro=models.IntegerField()
    Codigo=models.IntegerField()
    Titulo=models.CharField(max_length=100)
    ISBN=models.CharField(max_length=50)
    Editorial=models.CharField(max_length=100)
    NumPags=models.IntegerField()
   
    def __str__(self):
        return str(self.IDlibro)