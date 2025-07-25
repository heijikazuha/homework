from ckeditor_uploader.fields import RichTextUploadingField
from django.db import models
from django.utils import timezone

from user.models import MyUser


class ArticleType(models.Model):
    """
    博客类别实体
    """
    id = models.AutoField(primary_key=True)
    name = models.CharField('类别名称', max_length=50)
    user = models.ForeignKey(MyUser, on_delete=models.CASCADE, verbose_name='用户')

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = '博客类别管理'
        verbose_name_plural = '博客类别管理'


class Article(models.Model):
    """
    博客帖子实体
    """
    id = models.AutoField(primary_key=True)
    title = models.CharField('标题', max_length=100)
    type = models.ForeignKey(ArticleType, on_delete=models.CASCADE, verbose_name='帖子类别')
    content = RichTextUploadingField(verbose_name='内容')
    author = models.ForeignKey(MyUser, on_delete=models.CASCADE, verbose_name='用户')
    image = models.ImageField('文章图片', blank=True, upload_to='article/')
    reads = models.IntegerField('阅读量', default=0)
    abstract = models.CharField('摘要', max_length=300)
    create_time = models.DateTimeField('创建时间', default=timezone.now)
    update_time = models.DateTimeField('更新时间', auto_now=True)

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = '博客帖子管理'
        verbose_name_plural = '博客帖子管理'


class Comment(models.Model):
    """
    博客帖子评论实体
    """
    id = models.AutoField(primary_key=True)
    article = models.ForeignKey(Article, on_delete=models.CASCADE, verbose_name='所属文章')
    user = models.CharField('评论用户', max_length=60)
    content = models.TextField('评论内容')
    create_time = models.DateTimeField('创建时间', default=timezone.now)
    author = models.ForeignKey(MyUser, on_delete=models.CASCADE, verbose_name='帖子作者')

    def __str__(self):
        return self.content

    class Meta:
        verbose_name = '评论管理'
        verbose_name_plural = '评论管理'
