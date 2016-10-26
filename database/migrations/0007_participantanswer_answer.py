# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('database', '0006_auto_20160910_0554'),
    ]

    operations = [
        migrations.AddField(
            model_name='participantanswer',
            name='answer',
            field=models.CharField(max_length=20, null=True),
        ),
    ]
