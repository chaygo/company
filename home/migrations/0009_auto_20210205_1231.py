# Generated by Django 3.1.5 on 2021-02-05 07:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0008_auto_20210205_1108'),
    ]

    operations = [
        migrations.AddField(
            model_name='achievement',
            name='name_en_us',
            field=models.CharField(max_length=50, null=True, verbose_name='name'),
        ),
        migrations.AddField(
            model_name='achievement',
            name='name_ru',
            field=models.CharField(max_length=50, null=True, verbose_name='name'),
        ),
        migrations.AddField(
            model_name='achievement',
            name='name_tk',
            field=models.CharField(max_length=50, null=True, verbose_name='name'),
        ),
        migrations.AddField(
            model_name='achievement',
            name='name_tr',
            field=models.CharField(max_length=50, null=True, verbose_name='name'),
        ),
    ]
