from django.urls import path
from django.views.generic import RedirectView

from .views import *

urlpatterns = [

    # 相册列表
    path('<int:id>/<int:page>.html', album, name='album'),

]
