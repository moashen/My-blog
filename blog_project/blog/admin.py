# -*- coding: utf-8 -*-
from django.contrib import admin
from blog.models import *


class ArticleAdmin(admin.ModelAdmin):
    list_display = ('id', 'title', 'user', 'category', 'click_count', 'is_recommend',)
    list_display_links = ('title', 'category',)
    list_editable = ('click_count', 'is_recommend',)
    search_fields = ['title']
    list_filter = ['date_publish']

    fieldsets = (
        (None, {
                'fields': ('title', 'desc', 'content', )
        }),
        ('高级设置', {
            'classes': ('collapse', ),
            'fields': ('click_count', 'is_recommend', 'user', 'category', 'tag', 'date_publish')
        })

    )

    class Media:
        js = (
            '/static/js/kindeditor-4.1.10/kindeditor-min.js',
            '/static/js/kindeditor-4.1.10/lang/zh_CN.js',
            '/static/js/kindeditor-4.1.10/config.js',
        )

admin.site.register(User)
admin.site.register(Category)
admin.site.register(Tag)
admin.site.register(Article, ArticleAdmin)
admin.site.register(Comment)
admin.site.register(Links)
admin.site.register(Ad)
