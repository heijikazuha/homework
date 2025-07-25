from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from django.shortcuts import render

from album.models import AlbumInfo


# Create your views here.
def album(request, id, page):
    """
    根据用户id和页码查询图片墙信息
    :param request:
    :param id:
    :param page:
    :return:
    """
    pageSize = 6  # 每页大小
    albumList = AlbumInfo.objects.filter(user_id=id).order_by('id')
    paginator = Paginator(albumList, pageSize)
    try:
        pageData = paginator.page(page)  # 获取一页数据
    except PageNotAnInteger:
        pageData = paginator.page(1)  # 如果前端传来的页码不是整型，则返回第一页数据
    except EmptyPage:
        pageData = paginator.page(paginator.num_pages)  # 如果前端传来的页码超过实际页数，则返回最后一页数据
    # 过滤掉文章内容的空格
    return render(request, 'album.html', locals())
