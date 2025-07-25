from django.urls import path
from .views import *

urlpatterns = [

    # 用户登录请求
    path('login', login, name='userLogin'),
    # 跳转登录页面
    path('login.html', toLoginPage, name='toLoginPage'),
    # 跳转注册页面
    path('register.html', toRegisterPage, name='toRegisterPage'),
    # 用户注册请求
    path('register', register, name='userregister'),
    # 关于博主
    path('about/<int:id>.html', about, name='about'),
]
