from django.contrib import admin
from .models import *

# Inline classes for Payments associated with a Project
class PaymentInline(admin.TabularInline):
    model = Payment
    extra = 1  



@admin.register(Client)
class ClientModelAdmin(admin.ModelAdmin):
    list_display = ['id', 'name', 'phone', 'email']

@admin.register(Project)
class ProjectModelAdmin(admin.ModelAdmin):
    list_display = ['id', 'name', 'client_id', 'budget', 'status', 'start_time', 'end_time']
    inlines = [PaymentInline]  

@admin.register(Payment)
class PaymentModelAdmin(admin.ModelAdmin):
    list_display = ['id', 'project', 'received_amount', 'payment_date', 'description']



@admin.register(userModels)
class UserModelAdmin(admin.ModelAdmin):
    list_display = ['id', 'name', 'email', 'role', 'password']
