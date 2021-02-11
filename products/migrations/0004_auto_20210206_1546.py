# Generated by Django 3.1.5 on 2021-02-06 10:46

import ckeditor_uploader.fields
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0003_product_image'),
    ]

    operations = [
        migrations.AddField(
            model_name='category',
            name='title_en_us',
            field=models.CharField(max_length=100, null=True, verbose_name='title'),
        ),
        migrations.AddField(
            model_name='category',
            name='title_ru',
            field=models.CharField(max_length=100, null=True, verbose_name='title'),
        ),
        migrations.AddField(
            model_name='category',
            name='title_tk',
            field=models.CharField(max_length=100, null=True, verbose_name='title'),
        ),
        migrations.AddField(
            model_name='category',
            name='title_tr',
            field=models.CharField(max_length=100, null=True, verbose_name='title'),
        ),
        migrations.AddField(
            model_name='product',
            name='description_en_us',
            field=ckeditor_uploader.fields.RichTextUploadingField(null=True, verbose_name='description'),
        ),
        migrations.AddField(
            model_name='product',
            name='description_ru',
            field=ckeditor_uploader.fields.RichTextUploadingField(null=True, verbose_name='description'),
        ),
        migrations.AddField(
            model_name='product',
            name='description_tk',
            field=ckeditor_uploader.fields.RichTextUploadingField(null=True, verbose_name='description'),
        ),
        migrations.AddField(
            model_name='product',
            name='description_tr',
            field=ckeditor_uploader.fields.RichTextUploadingField(null=True, verbose_name='description'),
        ),
        migrations.AddField(
            model_name='product',
            name='title_en_us',
            field=models.CharField(max_length=100, null=True, verbose_name='title'),
        ),
        migrations.AddField(
            model_name='product',
            name='title_ru',
            field=models.CharField(max_length=100, null=True, verbose_name='title'),
        ),
        migrations.AddField(
            model_name='product',
            name='title_tk',
            field=models.CharField(max_length=100, null=True, verbose_name='title'),
        ),
        migrations.AddField(
            model_name='product',
            name='title_tr',
            field=models.CharField(max_length=100, null=True, verbose_name='title'),
        ),
        migrations.AlterField(
            model_name='category',
            name='create_at',
            field=models.DateTimeField(auto_now_add=True, verbose_name='create_at'),
        ),
        migrations.AlterField(
            model_name='category',
            name='slug',
            field=models.CharField(max_length=50, verbose_name='slug'),
        ),
        migrations.AlterField(
            model_name='category',
            name='title',
            field=models.CharField(max_length=100, verbose_name='title'),
        ),
        migrations.AlterField(
            model_name='category',
            name='update_at',
            field=models.DateTimeField(auto_now=True, verbose_name='update_at'),
        ),
        migrations.AlterField(
            model_name='product',
            name='create_at',
            field=models.DateTimeField(auto_now_add=True, verbose_name='create_at'),
        ),
        migrations.AlterField(
            model_name='product',
            name='description',
            field=ckeditor_uploader.fields.RichTextUploadingField(verbose_name='description'),
        ),
        migrations.AlterField(
            model_name='product',
            name='image',
            field=models.ImageField(upload_to='image/products', verbose_name='image'),
        ),
        migrations.AlterField(
            model_name='product',
            name='title',
            field=models.CharField(max_length=100, verbose_name='title'),
        ),
        migrations.AlterField(
            model_name='product',
            name='update_at',
            field=models.DateTimeField(auto_now=True, verbose_name='update_at'),
        ),
        migrations.AlterField(
            model_name='product',
            name='visible',
            field=models.BooleanField(default=False, verbose_name='visible'),
        ),
    ]