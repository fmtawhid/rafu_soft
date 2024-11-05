from django.contrib import admin
from .models import *
# Register your models here.

#admin.site.register(Client)
@admin.register(Client)
class ClientModelAdmin(admin.ModelAdmin):
    list_display = ['id','name', 'phone', 'email']