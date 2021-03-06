# Generated by Django 3.1.7 on 2021-06-23 11:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0016_auto_20210623_1155'),
    ]

    operations = [
        migrations.AlterField(
            model_name='profile',
            name='fullName',
            field=models.CharField(blank=True, default='QaL3S', max_length=221),
        ),
        migrations.AlterField(
            model_name='profile',
            name='slug',
            field=models.SlugField(blank=True, default='bGlx7Dvj', max_length=250, unique=True),
        ),
    ]
