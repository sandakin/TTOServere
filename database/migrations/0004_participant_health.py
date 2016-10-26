# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('database', '0003_participant'),
    ]

    operations = [
        migrations.AddField(
            model_name='participant',
            name='health',
            field=models.CharField(max_length=100, null=True),
        ),
    ]
