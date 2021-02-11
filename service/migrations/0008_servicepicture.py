# Generated by Django 3.1.5 on 2021-02-03 12:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('service', '0007_auto_20210202_1736'),
    ]

    operations = [
        migrations.CreateModel(
            name='ServicePicture',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=50)),
                ('image', models.ImageField(upload_to='images/service')),
            ],
        ),
    ]