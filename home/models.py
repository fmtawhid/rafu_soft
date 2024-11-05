from django.db import models

# Create your models here.



class Client(models.Model):
    name = models.CharField(max_length=100)
    company = models.CharField(max_length=200)
    email = models.EmailField()
    phone = models.CharField(max_length=20)
    address = models.CharField(max_length=400)
    password = models.CharField(max_length=50)
    def __str__(self):
        return self.name
    
class Project(models.Model):
    name=models.CharField(max_length=300)
    client=models.ForeignKey(Client, on_delete=models.CASCADE) #connect to client
    details = models.TextField(blank=True, max_length=700)
    budget = models.IntegerField(blank=True)
    start_time = models.DateTimeField(auto_now_add=True)
    end_time = models.DateTimeField(null=True)
    status = models.CharField(max_length=100, choices=[('Pending', 'Pending'), ('Completed', 'Completed'), ('Cancelled', 'Cancelled')])
    
    def __str__(self):
        return self.name

class Payment(models.Model):
    project = models.ForeignKey(Project, on_delete=models.CASCADE)
    amount = models.IntegerField()
    payment_date = models.DateTimeField(auto_now_add=True)
    description = models.CharField(max_length=300)
    def __str__(self):
        return f"Payment of {self.amount} on {self.payment_date.strftime('%Y-%m-%d')}"

    



