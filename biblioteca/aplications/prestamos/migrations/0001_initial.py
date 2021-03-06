# Generated by Django 3.1.2 on 2020-10-23 18:57

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('usuario', '0001_initial'),
        ('libro', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Prestamos',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('IDPrestamo', models.IntegerField()),
                ('F_prestamo', models.CharField(max_length=100)),
                ('F_devolucion', models.CharField(max_length=100)),
                ('IDLibro', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='libro.libro')),
                ('IDUsuario', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='usuario.usuario')),
            ],
        ),
    ]
