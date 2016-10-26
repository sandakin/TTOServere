# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('database', '0002_auto_20160817_0035'),
    ]

    operations = [
        migrations.CreateModel(
            name='Participant',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('zipocde', models.CharField(max_length=100, null=True)),
                ('dob', models.CharField(max_length=100, null=True)),
                ('sex', models.CharField(max_length=100, null=True)),
                ('hypertension', models.CharField(max_length=100, null=True)),
                ('insulin', models.CharField(max_length=100, null=True)),
                ('noninsulin', models.CharField(max_length=100, null=True)),
                ('asthma', models.CharField(max_length=100, null=True)),
                ('epilepsy', models.CharField(max_length=100, null=True)),
                ('anaemia', models.CharField(max_length=100, null=True)),
                ('renal', models.CharField(max_length=100, null=True)),
                ('cardiac', models.CharField(max_length=100, null=True)),
                ('accident', models.CharField(max_length=100, null=True)),
                ('mentalhealth', models.CharField(max_length=100, null=True)),
                ('gastro', models.CharField(max_length=100, null=True)),
                ('skin', models.CharField(max_length=100, null=True)),
                ('cancer', models.CharField(max_length=100, null=True)),
                ('other', models.CharField(max_length=100, null=True)),
                ('mobility', models.CharField(max_length=100, null=True)),
                ('personal', models.CharField(max_length=100, null=True)),
                ('activities', models.CharField(max_length=100, null=True)),
                ('pain', models.CharField(max_length=100, null=True)),
                ('anxiety', models.CharField(max_length=100, null=True)),
            ],
        ),
    ]
