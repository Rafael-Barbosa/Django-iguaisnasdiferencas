from django.contrib.auth import authenticate, login

def login(request):

    username = request.POST['username']
    password = request.POST['password']

    user = authenticate(username=username, password=password)
    if user is not None:
        if user.is_active:
            login(request, user)
        else:
            return 'Sua conta foi desabilitada!'
    else:
        return 'login inválido'