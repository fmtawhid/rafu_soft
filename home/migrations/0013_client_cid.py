# Generated by Django 5.1.2 on 2024-11-05 13:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0012_project_sub_total'),
    ]

    operations = [
        migrations.AddField(
            model_name='client',
            name='cid',
            field=models.IntegerField(default=1),
            preserve_default=False,
        ),
    ]
