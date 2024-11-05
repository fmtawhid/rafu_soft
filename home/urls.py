from django.urls import path
from .views import ClientList, ClientCreate, ClientRetrieve, ClientUpdate, ClientDestroy

urlpatterns = [
   path('clients/', ClientList.as_view(), name='client-list'),
   path('clients/create/', ClientCreate.as_view(), name='client-create'),
   path('clients/<int:pk>/', ClientRetrieve.as_view(), name='client-retrieve'), 
   path('clients/<int:pk>/update/', ClientUpdate.as_view(), name='client-update'), 
   path('clients/<int:pk>/delete/', ClientDestroy.as_view(), name='client-delete'),  
]



'''
path('myapi/', client_list, name='client_api'),
path('apidatails/<int:pk>/', api_detail),
'''