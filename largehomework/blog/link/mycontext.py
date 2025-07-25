from link.models import LinkInfo


def getAllLink(request):
    """
    获取所有友情链接
    :param request:
    :return:
    """

    return {"linkList": LinkInfo.objects.all()}
