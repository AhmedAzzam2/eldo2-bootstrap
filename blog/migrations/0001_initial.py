# Generated by Django 3.1.7 on 2021-05-22 09:15

import blog.models
from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone
import froala_editor.fields
import mptt.fields
import taggit.managers
import tinymce.models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('taggit', '0003_taggeditem_add_unique_index'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50, unique=True)),
                ('slug', models.SlugField(unique=True)),
                ('description', froala_editor.fields.FroalaField()),
                ('excerpt', models.TextField()),
                ('image', models.ImageField(default='posts/default.jpg', upload_to='uploads/')),
                ('views', models.PositiveIntegerField(default=0)),
                ('lft', models.PositiveIntegerField(editable=False)),
                ('rght', models.PositiveIntegerField(editable=False)),
                ('tree_id', models.PositiveIntegerField(db_index=True, editable=False)),
                ('level', models.PositiveIntegerField(editable=False)),
                ('parent', mptt.fields.TreeForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='children', to='blog.category')),
                ('tags', taggit.managers.TaggableManager(help_text='A comma-separated list of tags.', through='taggit.TaggedItem', to='taggit.Tag', verbose_name='Tags')),
            ],
            options={
                'verbose_name_plural': 'categories',
                'unique_together': {('parent', 'slug')},
            },
        ),
        migrations.CreateModel(
            name='Post',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=250)),
                ('excerpt', models.TextField()),
                ('image', models.ImageField(default='posts/default.jpg', upload_to='uploads/')),
                ('image_caption', models.CharField(default='El Doctor', max_length=100)),
                ('slug', models.SlugField(max_length=250, unique=True)),
                ('publish', models.DateTimeField(default=django.utils.timezone.now)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('content', tinymce.models.HTMLField()),
                ('status', models.CharField(choices=[('draft', 'Draft'), ('published', 'Published')], default='published', max_length=10)),
                ('pin', models.CharField(choices=[('draft', 'Draft'), ('home', 'home'), ('category', 'category'), ('videos', 'videos')], default='draft', max_length=111)),
                ('video_or_article', models.CharField(choices=[('article', 'article'), ('video', 'video')], default='article', max_length=111)),
                ('video_url', models.CharField(blank=True, max_length=255, null=True)),
                ('video_duration', models.CharField(blank=True, max_length=20, null=True)),
                ('like_count', models.BigIntegerField(default='0')),
                ('views', models.PositiveIntegerField(default=0)),
                ('thumbsup', models.IntegerField(default='0')),
                ('thumbsdown', models.IntegerField(default='0')),
                ('author', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='blog_posts', to=settings.AUTH_USER_MODEL)),
                ('category', mptt.fields.TreeForeignKey(on_delete=django.db.models.deletion.CASCADE, to='blog.category')),
                ('favourites', models.ManyToManyField(blank=True, default=None, related_name='favourite', to=settings.AUTH_USER_MODEL)),
                ('likes', models.ManyToManyField(blank=True, default=None, related_name='like', to=settings.AUTH_USER_MODEL)),
                ('tags', taggit.managers.TaggableManager(help_text='A comma-separated list of tags.', through='taggit.TaggedItem', to='taggit.Tag', verbose_name='Tags')),
                ('thumbs', models.ManyToManyField(blank=True, default=None, related_name='thumbs', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'ordering': ('-publish',),
            },
        ),
        migrations.CreateModel(
            name='Vote',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('vote', models.BooleanField(default=True)),
                ('post', models.ForeignKey(blank=True, default=None, on_delete=django.db.models.deletion.CASCADE, related_name='postid', to='blog.post')),
                ('user', models.ForeignKey(blank=True, default=None, on_delete=django.db.models.deletion.CASCADE, related_name='userid', to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Page',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=50, unique=True)),
                ('slug', models.SlugField(blank=True, null=True)),
                ('description', models.TextField(blank=True, null=True)),
                ('image', models.ImageField(default='page/default.jpg', upload_to=blog.models.user_directory_path)),
                ('lft', models.PositiveIntegerField(editable=False)),
                ('rght', models.PositiveIntegerField(editable=False)),
                ('tree_id', models.PositiveIntegerField(db_index=True, editable=False)),
                ('level', models.PositiveIntegerField(editable=False)),
                ('parent', mptt.fields.TreeForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='children', to='blog.page')),
            ],
            options={
                'ordering': ('-title',),
            },
        ),
        migrations.CreateModel(
            name='diseases',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50, unique=True)),
                ('slug', models.SlugField(blank=True, null=True)),
                ('description', models.TextField(blank=True, null=True)),
                ('image', models.ImageField(default='posts/default.jpg', upload_to=blog.models.user_directory_path)),
                ('lft', models.PositiveIntegerField(editable=False)),
                ('rght', models.PositiveIntegerField(editable=False)),
                ('tree_id', models.PositiveIntegerField(db_index=True, editable=False)),
                ('level', models.PositiveIntegerField(editable=False)),
                ('parent', mptt.fields.TreeForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='children', to='blog.diseases')),
                ('tags', taggit.managers.TaggableManager(help_text='A comma-separated list of tags.', through='taggit.TaggedItem', to='taggit.Tag', verbose_name='Tags')),
            ],
            options={
                'ordering': ('-name',),
            },
        ),
        migrations.CreateModel(
            name='Comment',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('email', models.EmailField(max_length=254)),
                ('content', models.TextField()),
                ('publish', models.DateTimeField(auto_now_add=True)),
                ('status', models.BooleanField(default=True)),
                ('lft', models.PositiveIntegerField(editable=False)),
                ('rght', models.PositiveIntegerField(editable=False)),
                ('tree_id', models.PositiveIntegerField(db_index=True, editable=False)),
                ('level', models.PositiveIntegerField(editable=False)),
                ('parent', mptt.fields.TreeForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='children', to='blog.comment')),
                ('post', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='comments', to='blog.post')),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='bodyOrgans',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50, unique=True)),
                ('slug', models.SlugField(blank=True, null=True)),
                ('description', models.TextField(blank=True, null=True)),
                ('image', models.ImageField(default='posts/default.jpg', upload_to=blog.models.user_directory_path)),
                ('lft', models.PositiveIntegerField(editable=False)),
                ('rght', models.PositiveIntegerField(editable=False)),
                ('tree_id', models.PositiveIntegerField(db_index=True, editable=False)),
                ('level', models.PositiveIntegerField(editable=False)),
                ('parent', mptt.fields.TreeForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='children', to='blog.bodyorgans')),
                ('tags', taggit.managers.TaggableManager(help_text='A comma-separated list of tags.', through='taggit.TaggedItem', to='taggit.Tag', verbose_name='Tags')),
            ],
            options={
                'ordering': ('-name',),
            },
        ),
    ]
