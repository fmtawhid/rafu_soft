# Generated by Django 5.1.2 on 2024-11-06 08:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0014_remove_client_cid_alter_client_password_and_more'),
    ]

    operations = [
        migrations.RenameField(
            model_name='payment',
            old_name='amount',
            new_name='received_amount',
        ),
        migrations.RenameField(
            model_name='project',
            old_name='client',
            new_name='client_id',
        ),
        migrations.AlterField(
            model_name='project',
            name='end_time',
            field=models.DateField(null=True),
        ),
        migrations.AlterField(
            model_name='project',
            name='start_time',
            field=models.DateField(null=True),
        ),
    ]
