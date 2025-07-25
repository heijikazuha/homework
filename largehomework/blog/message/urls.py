from django.urls import path
from django.views.generic import RedirectView

from .views import *

urlpatterns = [

    # 留言列表
    path('<int:id>/<int:page>.html', message, name='message')

]
