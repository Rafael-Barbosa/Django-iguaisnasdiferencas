from django.shortcuts import render
from django.contrib.auth.decorators import login_required


@login_required
def painel(request):
    return render(request, 'app/painel/index.html')