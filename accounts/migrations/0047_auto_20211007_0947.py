# Generated by Django 3.1.7 on 2021-10-07 07:47

from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('accounts', '0046_auto_20211006_1257'),
    ]

    operations = [
        migrations.AddField(
            model_name='profile',
            name='favourite',
            field=models.ManyToManyField(blank=True, default=None, related_name='favouriteUser', to=settings.AUTH_USER_MODEL),
        ),
        migrations.AlterField(
            model_name='profile',
            name='fullName',
            field=models.CharField(blank=True, default='4f17j', max_length=221),
        ),
        migrations.AlterField(
            model_name='profile',
            name='slug',
            field=models.SlugField(blank=True, default='qifRc2rZ', max_length=250, unique=True),
        ),
    ]
