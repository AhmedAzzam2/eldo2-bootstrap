# Generated by Django 3.1.7 on 2021-08-15 07:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0027_auto_20210815_0905'),
    ]

    operations = [
        migrations.AlterField(
            model_name='profile',
            name='fullName',
            field=models.CharField(blank=True, default='BG1pt', max_length=221),
        ),
        migrations.AlterField(
            model_name='profile',
            name='slug',
            field=models.SlugField(blank=True, default='27IheHKW', max_length=250, unique=True),
        ),
    ]
