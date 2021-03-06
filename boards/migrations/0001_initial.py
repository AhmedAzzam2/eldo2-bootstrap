# Generated by Django 3.1.7 on 2021-06-07 14:34

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone
import mptt.fields
import taggit.managers


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('taggit', '0003_taggeditem_add_unique_index'),
    ]

    operations = [
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50, unique=True)),
                ('slug', models.SlugField(unique=True)),
                ('description', models.TextField()),
                ('excerpt', models.TextField()),
                ('image', models.ImageField(default='Topics/default.jpg', upload_to='uploads/')),
                ('views', models.PositiveIntegerField(default=0)),
                ('lft', models.PositiveIntegerField(editable=False)),
                ('rght', models.PositiveIntegerField(editable=False)),
                ('tree_id', models.PositiveIntegerField(db_index=True, editable=False)),
                ('level', models.PositiveIntegerField(editable=False)),
                ('parent', mptt.fields.TreeForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='children', to='boards.category')),
                ('tags', taggit.managers.TaggableManager(help_text='A comma-separated list of tags.', related_name='topic_cate', through='taggit.TaggedItem', to='taggit.Tag', verbose_name='Tags')),
            ],
            options={
                'verbose_name_plural': 'categories',
                'unique_together': {('parent', 'slug')},
            },
        ),
        migrations.CreateModel(
            name='Topic',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=250)),
                ('excerpt', models.TextField(default='0')),
                ('image', models.ImageField(default='Topics/default.jpg', upload_to='uploads/')),
                ('image_caption', models.CharField(default='El Doctor', max_length=100)),
                ('slug', models.SlugField(max_length=250, unique=True)),
                ('publish', models.DateTimeField(default=django.utils.timezone.now)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('content', models.TextField()),
                ('status', models.CharField(choices=[('draft', 'Draft'), ('published', 'Published')], default='published', max_length=10)),
                ('pin', models.CharField(choices=[('draft', 'Draft'), ('home', 'home'), ('category', 'category'), ('videos', 'videos')], default='draft', max_length=111)),
                ('video_url', models.CharField(blank=True, max_length=255, null=True)),
                ('video_duration', models.CharField(blank=True, max_length=20, null=True)),
                ('like_count', models.BigIntegerField(default='0')),
                ('views', models.PositiveIntegerField(default=0)),
                ('thumbsup', models.IntegerField(default='0')),
                ('thumbsdown', models.IntegerField(default='0')),
                ('NotfFaV', models.ManyToManyField(blank=True, default=None, related_name='NotfFaVe', to=settings.AUTH_USER_MODEL)),
                ('author', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='blog_Topics', to=settings.AUTH_USER_MODEL)),
                ('category', mptt.fields.TreeForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='boards.category')),
                ('favourites', models.ManyToManyField(blank=True, default=None, related_name='favouriteT', to=settings.AUTH_USER_MODEL)),
                ('likes', models.ManyToManyField(blank=True, default=None, related_name='likeT', to=settings.AUTH_USER_MODEL)),
                ('thumbs', models.ManyToManyField(blank=True, default=None, related_name='thumbsT', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'ordering': ('-publish',),
            },
        ),
        migrations.CreateModel(
            name='VoteT',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('vote', models.BooleanField(default=True)),
                ('Topic', models.ForeignKey(blank=True, default=None, on_delete=django.db.models.deletion.CASCADE, related_name='Topicid', to='boards.topic')),
                ('user', models.ForeignKey(blank=True, default=None, on_delete=django.db.models.deletion.CASCADE, related_name='useridT', to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Notification',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('url', models.TextField(blank=True, max_length=5500)),
                ('fullName', models.CharField(blank=True, max_length=221)),
                ('dr', models.BooleanField(default=False)),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='CommentT',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('content', models.TextField()),
                ('publish', models.DateTimeField(auto_now_add=True)),
                ('status', models.BooleanField(default=True)),
                ('lft', models.PositiveIntegerField(editable=False)),
                ('rght', models.PositiveIntegerField(editable=False)),
                ('tree_id', models.PositiveIntegerField(db_index=True, editable=False)),
                ('level', models.PositiveIntegerField(editable=False)),
                ('NotfFaId', models.ManyToManyField(blank=True, default=None, related_name='NotfFaVId', to=settings.AUTH_USER_MODEL)),
                ('Topic', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='comments', to='boards.topic')),
                ('author', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='author', to=settings.AUTH_USER_MODEL)),
                ('parent', mptt.fields.TreeForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='children', to='boards.commentt')),
            ],
            options={
                'abstract': False,
            },
        ),
    ]
