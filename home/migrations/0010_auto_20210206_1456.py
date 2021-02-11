# Generated by Django 3.1.5 on 2021-02-06 09:56

import ckeditor_uploader.fields
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0009_auto_20210205_1231'),
    ]

    operations = [
        migrations.AddField(
            model_name='blog',
            name='description_en_us',
            field=ckeditor_uploader.fields.RichTextUploadingField(null=True, verbose_name='title'),
        ),
        migrations.AddField(
            model_name='blog',
            name='description_ru',
            field=ckeditor_uploader.fields.RichTextUploadingField(null=True, verbose_name='title'),
        ),
        migrations.AddField(
            model_name='blog',
            name='description_tk',
            field=ckeditor_uploader.fields.RichTextUploadingField(null=True, verbose_name='title'),
        ),
        migrations.AddField(
            model_name='blog',
            name='description_tr',
            field=ckeditor_uploader.fields.RichTextUploadingField(null=True, verbose_name='title'),
        ),
        migrations.AddField(
            model_name='blog',
            name='header_en_us',
            field=models.CharField(max_length=200, null=True, verbose_name='title'),
        ),
        migrations.AddField(
            model_name='blog',
            name='header_ru',
            field=models.CharField(max_length=200, null=True, verbose_name='title'),
        ),
        migrations.AddField(
            model_name='blog',
            name='header_tk',
            field=models.CharField(max_length=200, null=True, verbose_name='title'),
        ),
        migrations.AddField(
            model_name='blog',
            name='header_tr',
            field=models.CharField(max_length=200, null=True, verbose_name='title'),
        ),
        migrations.AddField(
            model_name='blog',
            name='user_en_us',
            field=models.CharField(max_length=100, null=True, verbose_name='title'),
        ),
        migrations.AddField(
            model_name='blog',
            name='user_ru',
            field=models.CharField(max_length=100, null=True, verbose_name='title'),
        ),
        migrations.AddField(
            model_name='blog',
            name='user_tk',
            field=models.CharField(max_length=100, null=True, verbose_name='title'),
        ),
        migrations.AddField(
            model_name='blog',
            name='user_tr',
            field=models.CharField(max_length=100, null=True, verbose_name='title'),
        ),
    ]