# Generated by Django 3.1.7 on 2021-10-08 12:29

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('accounts', '0062_auto_20211008_1147'),
    ]

    operations = [
        migrations.AlterField(
            model_name='profile',
            name='fullName',
            field=models.CharField(blank=True, default='l1KOj', max_length=221),
        ),
        migrations.AlterField(
            model_name='profile',
            name='slug',
            field=models.SlugField(blank=True, default='IsBGT7MY', max_length=250, unique=True),
        ),
        migrations.CreateModel(
            name='follow',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('vote', models.BooleanField(default=True)),
                ('publish', models.DateTimeField(default=django.utils.timezone.now)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('follPr', models.ForeignKey(blank=True, default=None, on_delete=django.db.models.deletion.CASCADE, related_name='followfp', to='accounts.profile')),
                ('userFoll', models.ForeignKey(blank=True, default=None, on_delete=django.db.models.deletion.CASCADE, related_name='followidf', to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]