# -*- coding: utf-8 -*-
# Generated by Django 1.10.6 on 2017-03-16 13:16
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='article',
            options={'ordering': ['-date_publish'], 'verbose_name': '文章', 'verbose_name_plural': '文章'},
        ),
        migrations.RenameField(
            model_name='article',
            old_name='date_pulish',
            new_name='date_publish',
        ),
    ]
