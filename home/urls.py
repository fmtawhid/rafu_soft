from django.urls import path
from .views import *

urlpatterns = [
   path('clients/', ClientList.as_view(), name='client-list'),
   path('clients/create/', ClientCreate.as_view(), name='client-create'),
   path('clients/<int:pk>/', ClientRetrieve.as_view(), name='client-retrieve'), 
   path('clients/<int:pk>/update/', ClientUpdate.as_view(), name='client-update'), 
   path('clients/<int:pk>/delete/', ClientDestroy.as_view(), name='client-delete'),  


   path('projects/', ProjectList.as_view(), name='project-list'),
    path('projects/create/', ProjectCreate.as_view(), name='project-create'),
    path('projects/<int:pk>/', ProjectRetrieve.as_view(), name='project-retrieve'),
    path('projects/<int:pk>/update/', ProjectUpdate.as_view(), name='project-update'),
    path('projects/<int:pk>/delete/', ProjectDestroy.as_view(), name='project-delete'),

    # Payment URLs
    path('payments/', PaymentList.as_view(), name='payment-list'),
    path('payments/create/', PaymentCreate.as_view(), name='payment-create'),
    path('payments/<int:pk>/', PaymentRetrieve.as_view(), name='payment-retrieve'),
    path('payments/<int:pk>/update/', PaymentUpdate.as_view(), name='payment-update'),
    path('payments/<int:pk>/delete/', PaymentDestroy.as_view(), name='payment-delete'),
]



'''
path('myapi/', client_list, name='client_api'),
path('apidatails/<int:pk>/', api_detail),
'''