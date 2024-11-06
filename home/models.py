from django.db import models

# Create your models here.

from django.contrib.auth.hashers import make_password, check_password
from django.db.models.signals import post_save
from django.dispatch import receiver


class Client(models.Model):
    name = models.CharField(max_length=100)
    company = models.CharField(max_length=200)
    email = models.EmailField(unique=True)
    phone = models.CharField(max_length=20)
    address = models.CharField(max_length=400)
    password = models.CharField(max_length=128)  

    # def save(self, *args, **kwargs):
    #     if not self.password.startswith('pbkdf2_'):  # To avoid re-hashing an already hashed password
    #         self.password = make_password(self.password)
    #     super().save(*args, **kwargs)

    def __str__(self):
        return str(self.id)


class Project(models.Model):
    name=models.CharField(max_length=300)
    client_id=models.ForeignKey(Client, on_delete=models.CASCADE) #connect to client
    details = models.TextField(blank=True, max_length=700)
    budget = models.IntegerField(blank=True)
    sub_total = models.IntegerField(blank=True)
    start_time = models.DateField(null=True)
    end_time = models.DateField(null=True)
    
    status = models.CharField(max_length=100, choices=[('Pending', 'Pending'), ('Completed', 'Completed'), ('Cancelled', 'Cancelled')])
    
    def __str__(self):
        return self.name

class Payment(models.Model):
    project = models.ForeignKey(Project, on_delete=models.CASCADE)
    received_amount = models.IntegerField()
    payment_date = models.DateTimeField(auto_now_add=True)
    description = models.CharField(max_length=300)
    def __str__(self):
        return f"Payment of {self.received_amount} on {self.payment_date.strftime('%Y-%m-%d %H:%M')}"


class userModels(models.Model):
    name = models.CharField(max_length=100)
    email = models.EmailField(unique=True)
    password = models.CharField(max_length=100)
    role = models.CharField(max_length=100, choices=[('Admin', 'Admin'), ('Client', 'Client')])

    # def save(self, *args, **kwargs):
    #     if not self.password.startswith('pbkdf2_'):  # To avoid re-hashing an already hashed password
    #         self.password = make_password(self.password)
    #     super().save(*args, **kwargs)

    def __str__(self):
        return self.name


# Signal to automatically create a Client when a userModels object with role 'Client' is created
@receiver(post_save, sender=userModels)
def create_client_for_user(sender, instance, created, **kwargs):
    if created and instance.role == 'Client':  # Only create client if the user is new and has the role 'Client'
        # Create the client record linked to the user
        Client.objects.create(
            name=instance.name,
            email=instance.email,
            password=instance.password,  # Use hashed password
            # You can add any default or derived data here for the Client
            company="Default Company",  # Default value, change as per requirements
            phone="Default Phone",      # Default value, change as per requirements
            address="Default Address"   # Default value, change as per requirements
        )

