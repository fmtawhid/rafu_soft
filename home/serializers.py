#from django.views.decorators.csrf import csrf_exempt
#from rest_framework.parsers import JSONParser
#from django.http import HttpResponse, JsonResponse
from rest_framework import serializers
from .models import Client

class ClientSerializer(serializers.ModelSerializer):
    class Meta:
        model = Client
        fields = ['id', 'name', 'email', 'phone']




'''
    name = serializers.CharField(max_length=100)
    email = serializers.EmailField(max_length=100)
    phone = serializers.CharField(max_length=100)

    def create(self, validated_data):
        """
        Create and return a new `Snippet` instance, given the validated data.
        """
        return Client.objects.create(**validated_data)

    def update(self, instance, validated_data):
        
        instance.name = validated_data.get('name', instance.name)
        instance.email = validated_data.get('email', instance.email)
        instance.phone = validated_data.get('phone', instance.phone)
        instance.save()
        return instance
    
'''
