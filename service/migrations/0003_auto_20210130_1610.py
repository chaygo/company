# Generated by Django 3.1.5 on 2021-01-30 11:10

import ckeditor.fields
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('service', '0002_auto_20210130_1603'),
    ]

    operations = [
        migrations.AlterField(
            model_name='service',
            name='describe',
            field=ckeditor.fields.RichTextField(),
        ),
    ]
