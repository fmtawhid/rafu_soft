# Generated by Django 5.1.2 on 2024-11-05 13:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0006_remove_project_payment_payment_project'),
    ]

    operations = [
        migrations.AddField(
            model_name='project',
            name='sub_total',
            field=models.IntegerField(blank=True, default=1),
            preserve_default=False,
        ),
    ]
