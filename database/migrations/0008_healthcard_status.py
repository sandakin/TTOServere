# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('database', '0007_participantanswer_answer'),
    ]

    operations = [
        migrations.AddField(
            model_name='healthcard',
            name='status',
            field=models.CharField(default='0', max_length=2),
        ),
    ]
