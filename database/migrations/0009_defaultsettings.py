# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('database', '0008_healthcard_status'),
    ]

    operations = [
        migrations.CreateModel(
            name='DefaultSettings',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('card_count', models.IntegerField(default=10)),
            ],
        ),
    ]
