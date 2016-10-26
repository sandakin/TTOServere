# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('database', '0005_participantanswer'),
    ]

    operations = [
        migrations.RenameField(
            model_name='participantanswer',
            old_name='answer',
            new_name='life_a',
        ),
        migrations.AddField(
            model_name='participantanswer',
            name='life_b',
            field=models.CharField(max_length=20, null=True),
        ),
    ]
