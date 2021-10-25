# Generated by Django 3.1.7 on 2021-10-08 17:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0103_auto_20211008_1911'),
    ]

    operations = [
        migrations.AlterField(
            model_name='profile',
            name='fullName',
            field=models.CharField(blank=True, default='UNzgX', max_length=221),
        ),
        migrations.AlterField(
            model_name='profile',
            name='slug',
            field=models.SlugField(blank=True, default='N7sGjgV4', max_length=250, unique=True),
        ),
    ]
