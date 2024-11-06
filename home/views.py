from .models import *
from .serializers import *
from rest_framework.generics import ListAPIView, CreateAPIView, RetrieveAPIView, UpdateAPIView, DestroyAPIView
# client view
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


#For Project

class ProjectList(ListAPIView):
    queryset = Project.objects.all()
    serializer_class = ProjectSerializer

class ProjectCreate(CreateAPIView):
    queryset = Project.objects.all()
    serializer_class = ProjectSerializer

class ProjectRetrieve(RetrieveAPIView):
    queryset = Project.objects.all()
    serializer_class = ProjectSerializer

class ProjectUpdate(UpdateAPIView):
    queryset = Project.objects.all()
    serializer_class = ProjectSerializer

class ProjectDestroy(DestroyAPIView):
    queryset = Project.objects.all()
    serializer_class = ProjectSerializer



# for payment


class PaymentList(ListAPIView):
    queryset = Payment.objects.all()
    serializer_class = PaymentSerializer

class PaymentCreate(CreateAPIView):
    queryset = Payment.objects.all()
    serializer_class = PaymentSerializer

class PaymentRetrieve(RetrieveAPIView):
    queryset = Payment.objects.all()
    serializer_class = PaymentSerializer

class PaymentUpdate(UpdateAPIView):
    queryset = Payment.objects.all()
    serializer_class = PaymentSerializer

class PaymentDestroy(DestroyAPIView):
    queryset = Payment.objects.all()
    serializer_class = PaymentSerializer

# user view

class UserList(ListAPIView):
    queryset = userModels.objects.all()
    serializer_class = UserSerializer

class UserCreate(CreateAPIView):
    queryset = userModels.objects.all()
    serializer_class = UserSerializer

class UserRetrieve(RetrieveAPIView):
    queryset = userModels.objects.all()
    serializer_class = UserSerializer

class UserUpdate(UpdateAPIView):
    queryset = userModels.objects.all()
    serializer_class = UserSerializer

class UserDestroy(DestroyAPIView):
    queryset = userModels.objects.all()
    serializer_class = UserSerializer








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