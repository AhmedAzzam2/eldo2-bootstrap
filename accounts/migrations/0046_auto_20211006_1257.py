# Generated by Django 3.1.7 on 2021-10-06 10:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0045_auto_20210815_1051'),
    ]

    operations = [
        migrations.AlterField(
            model_name='profile',
            name='fullName',
            field=models.CharField(blank=True, default='VjR8K', max_length=221),
        ),
        migrations.AlterField(
            model_name='profile',
            name='slug',
            field=models.SlugField(blank=True, default='VCZzLAaC', max_length=250, unique=True),
        ),
    ]