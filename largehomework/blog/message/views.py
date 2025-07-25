import datetime

from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from django.shortcuts import render, redirect
from django.urls import reverse

from message.models import Message
from user.models import MyUser


# Create your views here.
def message(request, id, page):
    """
    留言信息查询和添加
    :param request:
    :param id:
    :param page:
    :return:
    """
    pageSize = 10  # 每页大小
    if request.method == 'GET':
        # 获取留言列表
        messageList = Message.objects.filter(user_id=id).order_by('-create_time')
        paginator = Paginator(messageList, pageSize)
        try:
            pageData = paginator.page(page)  # 获取一页数据
        except PageNotAnInteger:
            pageData = paginator.page(1)  # 如果前端传来的页码不是整型，则返回第一页数据
        except EmptyPage:
            pageData = paginator.page(paginator.num_pages)  # 如果前端传来的页码超过实际页数，则返回最后一页数据
        return render(request, 'message.html', locals())
    else:  # 添加留言信息
        name = request.POST.get("name")
        email = request.POST.get("email")
        content = request.POST.get("content")
        value = {'user_id': id, 'name': name, 'content': content, 'email': email,
                 'create_time': datetime.datetime.now()}
        Message.objects.create(**value)
        kwargs = {'id': id, 'page': 1}
        return redirect(reverse('message', kwargs=kwargs))
