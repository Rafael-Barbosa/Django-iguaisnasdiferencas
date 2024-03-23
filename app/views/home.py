from django.shortcuts import render
from app.models.models import Image

def home(request):
    images = Image.objects.all()
    return render(request, 'app/home.html', {'images': images})
