# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('database', '0009_defaultsettings'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='DefaultSettings',
            new_name='DefaultSetting',
        ),
    ]
