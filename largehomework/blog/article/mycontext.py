from article.models import ArticleType


def getAllArticleType(request):
    """
    获取所有帖子类别
    :param request:
    :return:
    """
    return {"articleTypeList": ArticleType.objects.all()}
