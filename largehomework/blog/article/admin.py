from django.contrib import admin
from article.models import *

# Register your models here.


admin.site.site_title = "python博客后台管理"
admin.site.index_title = "博客后台管理"
admin.site.site_header = "python博客管理系统"


@admin.register(Article)
class ArticleAdmin(admin.ModelAdmin):
    list_display = ['title', 'author', 'image', 'create_time', 'abstract']

    def get_queryset(self, request):
        """
        查询过滤
        :param request:
        :return:
        """
        qs = super().get_queryset(request)
        return qs.filter(author_id=request.user.id)

    def formfield_for_foreignkey(self, db_field, request, **kwargs):
        """
        新增或修改数据时，设置外键可选值
        :param db_field:
        :param request:
        :param kwargs:
        :return:
        """
        if db_field.name == 'author':
            id = request.user.id
            kwargs["queryset"] = MyUser.objects.filter(id=id)
        if db_field.name == 'type':
            id = request.user.id
            kwargs["queryset"] = ArticleType.objects.filter(user_id=id)
        return super().formfield_for_foreignkey(db_field, request, **kwargs)


@admin.register(ArticleType)
class ArticleTypeAdmin(admin.ModelAdmin):
    list_display = ['id', 'name', 'user']

    def get_queryset(self, request):
        """
        查询过滤
        :param request:
        :return:
        """
        qs = super().get_queryset(request)
        return qs.filter(user_id=request.user.id)

    def get_readonly_fields(self, request, obj=None):
        self.readonly_fields = ["user"]
        return self.readonly_fields


@admin.register(Comment)
class CommentAdmin(admin.ModelAdmin):
    list_display = ['id', 'article', 'user', 'content', 'create_time']

    def get_queryset(self, request):
        """
        查询过滤
        :param request:
        :return:
        """
        qs = super().get_queryset(request)
        return qs.filter(author_id=request.user.id)

    def get_readonly_fields(self, request, obj=None):
        self.readonly_fields = ["author"]
        return self.readonly_fields
