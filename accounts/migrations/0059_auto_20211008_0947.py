# Generated by Django 3.1.7 on 2021-10-08 07:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0058_auto_20211007_2344'),
    ]

    operations = [
        migrations.AlterField(
            model_name='profile',
            name='fullName',
            field=models.CharField(blank=True, default='nH5EW', max_length=221),
        ),
        migrations.AlterField(
            model_name='profile',
            name='slug',
            field=models.SlugField(blank=True, default='43bm69YA', max_length=250, unique=True),
        ),
    ]
