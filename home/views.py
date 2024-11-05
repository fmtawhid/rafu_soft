from .models import Client
from .serializers import ClientSerializer
from rest_framework.generics import ListAPIView, CreateAPIView, RetrieveAPIView, UpdateAPIView, DestroyAPIView

class ClientList(ListAPIView):
    queryset = Client.objects.all()
    serializer_class = ClientSerializer

class ClientCreate(CreateAPIView):
    queryset = Client.objects.all()
    serializer_class = ClientSerializer

class ClientRetrieve(RetrieveAPIView):
    queryset = Client.objects.all()
    serializer_class = ClientSerializer

class ClientUpdate(UpdateAPIView):
    queryset = Client.objects.all()
    serializer_class = ClientSerializer

class ClientDestroy(DestroyAPIView):
    queryset = Client.objects.all()
    serializer_class = ClientSerializer



'''
from django.http import HttpResponse, JsonResponse
from django.views.decorators.csrf import csrf_exempt
from rest_framework.parsers import JSONParser

@csrf_exempt
def client_list(request):
    if request.method == 'GET':
        clients = Client.objects.all()
        serializer = ClientSerializer(clients, many=True)
        return JsonResponse(serializer.data, safe=False)
    
    elif request.method == 'POST':
        data = JSONParser().parse(request)
        serializer = ClientSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return JsonResponse(serializer.data, status=201)
        return JsonResponse(serializer.errors, status=400)

@csrf_exempt
def api_detail(request, pk):
    """
    Retrieve, update or delete a code snippet.
    """
    try:
        dapi = Client.objects.get(pk=pk)
    except Client.DoesNotExist:
        return HttpResponse(status=404)

    if request.method == 'GET':
        serializer = ClientSerializer(dapi)
        return JsonResponse(serializer.data)

    elif request.method == 'PUT':
        data = JSONParser().parse(request)
        serializer = ClientSerializer(dapi, data=data)
        if serializer.is_valid():
            serializer.save()
            return JsonResponse(serializer.data)
        return JsonResponse(serializer.errors, status=400)

    elif request.method == 'DELETE':
        dapi.delete()
        return HttpResponse(status=204)
'''