# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('database', '0004_participant_health'),
    ]

    operations = [
        migrations.CreateModel(
            name='ParticipantAnswer',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('answer', models.CharField(max_length=20, null=True)),
                ('health_card', models.ForeignKey(to='database.HealthCard', null=True)),
                ('participant', models.ForeignKey(to='database.Participant', null=True)),
            ],
        ),
    ]
