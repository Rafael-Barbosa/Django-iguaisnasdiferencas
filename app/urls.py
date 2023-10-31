from django.urls import path

from .views.view import view

urlpatterns = [
    path('', view, name='view'),
   
]