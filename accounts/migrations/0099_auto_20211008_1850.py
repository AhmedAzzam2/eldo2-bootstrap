# Generated by Django 3.1.7 on 2021-10-08 16:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0098_auto_20211008_1849'),
    ]

    operations = [
        migrations.AlterField(
            model_name='profile',
            name='fullName',
            field=models.CharField(blank=True, default='bQ7m4', max_length=221),
        ),
        migrations.AlterField(
            model_name='profile',
            name='slug',
            field=models.SlugField(blank=True, default='AbJKG4c6', max_length=250, unique=True),
        ),
    ]
