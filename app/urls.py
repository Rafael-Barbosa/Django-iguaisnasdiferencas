from django.urls import path

from .views.home import home
from .views.painel import painel

urlpatterns = [
    path('', home, name='home'),
    path('painel/', painel, name='painel')
]