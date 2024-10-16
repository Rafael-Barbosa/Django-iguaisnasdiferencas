from django.urls import path, include
from django.contrib.auth import views as auth_views
from django.conf.urls.static import static
from django.conf import settings


from .views.home import home
from .views.painel import painel

urlpatterns = [
    path('', home, name='home'),
    path('painel/', painel, name='painel'),
    path('login/', auth_views.LoginView.as_view(template_name='app/login.html'), name='login'),
    path('cadastro/', auth_views.LoginView.as_view(template_name='app/painel/cadastro.html'), name='cadastro'),
    path('table/', auth_views.LoginView.as_view(template_name='app/painel/table.html'), name='table'),
    path('profile/', auth_views.LoginView.as_view(template_name='app/painel/profile.html'), name='profile'),
    path('register/', auth_views.LoginView.as_view(template_name='app/painel/register.html'), name='register')

] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)