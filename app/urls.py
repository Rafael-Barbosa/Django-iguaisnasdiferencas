from django.urls import path
from django.contrib.auth import views as auth_views


from .views.home import home
from .views.painel import painel

urlpatterns = [
    path('', home, name='home'),
    path('painel/', painel, name='painel'),
    path('login/', auth_views.LoginView.as_view(template_name='app/login.html'), name='login')

]