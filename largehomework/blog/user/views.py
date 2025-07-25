import django
from django.shortcuts import render, redirect
from .models import MyUser
from django.contrib.auth import login
from django.contrib.auth import logout
from django.contrib.auth import authenticate
from django.urls import reverse


def register(request):
    username = request.POST.get('username', '')
    password = request.POST.get('password', '')
    password2 = request.POST.get('password2', '')
    if MyUser.objects.filter(username=username):
        info = '用户已存在'
    elif password2 != password:
        info = '两次密码输入不一致'
    else:
        d = {
            'username': username, 'password': password,
            'is_superuser': 1, 'is_staff': 1
        }
        user = MyUser.objects.create_user(**d)
        user.save()
        info = '注册成功，请重新登录'
        logout(request)
    return render(request, 'register.html', locals())

def login(request):
    username = request.POST.get('username', '')
    password = request.POST.get('password', '')
    if MyUser.objects.filter(username=username):
        user = authenticate(username=username, password=password)
        if user:
            if user.is_active:
                django.contrib.auth.login(request, user)
            kwargs = {'id': request.user.id, 'page': 1, 'typeId': 0}
            return redirect(reverse('article', kwargs=kwargs))
        else:
            errorinfo = '用户名或者密码错误！'
    else:
        errorinfo = '用户不存在，请注册'
    return render(request, 'login.html', locals())


def toLoginPage(request):
    """
    跳转登录页面
    :param request:
    :return:
    """
    return render(request, 'login.html')


def toRegisterPage(request):
    """
    跳转到注册页面
    :param request:
    :return:
    """
    return render(request, 'register.html')


def about(request, id):
    """
    根据用户id查询个人信息
    :param request:
    :param id:
    :return:
    """
    user = MyUser.objects.filter(id=id).first()
    return render(request, 'about.html', locals())
