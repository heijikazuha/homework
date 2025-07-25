from django.contrib import admin

from message.models import Message


# Register your models here.


@admin.register(Message)
class MessageAdmin(admin.ModelAdmin):
    list_display = ['id', 'name', 'email', 'content', 'create_time']

    def get_queryset(self, request):
        """
        查询过滤
        :param request:
        :return:
        """
        qs = super().get_queryset(request)
        return qs.filter(user_id=request.user.id)

    def add_view(self, request, form_url='', extra_context=None):
        """
        设置下拉框默认选中
        :param request:
        :param form_url:
        :param extra_context:
        :return:
        """
        data = request.GET.copy()
        data['user'] = request.user
        request.GET = data
        return super(MessageAdmin, self).add_view(request, form_url, extra_context)
