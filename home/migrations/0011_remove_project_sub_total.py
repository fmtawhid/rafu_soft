# Generated by Django 5.1.2 on 2024-11-05 13:32

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0010_alter_project_end_time'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='project',
            name='sub_total',
        ),
    ]
