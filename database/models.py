from __future__ import unicode_literals

from django.db import models

# Create your models here.

class DefaultSetting(models.Model):
    card_count = models.IntegerField(default=10)

class HealthCard(models.Model):
    name = models.CharField(max_length=50,null=True)
    video = models.CharField(max_length=200,null=True)
    status = models.CharField(max_length=2,default='0')#1=default health card
    
class HealthState(models.Model):
    health_card = models.ForeignKey(HealthCard,related_name='states',null=True)
    state_desc = models.CharField(max_length=200,null=True)
    
class Participant(models.Model):
    zipocde = models.CharField(max_length=100,null=True)
    dob = models.CharField(max_length=100,null=True)
    sex = models.CharField(max_length=100,null=True)
    hypertension = models.CharField(max_length=100,null=True)
    insulin = models.CharField(max_length=100,null=True)
    noninsulin = models.CharField(max_length=100,null=True)
    asthma = models.CharField(max_length=100,null=True)
    epilepsy = models.CharField(max_length=100,null=True)
    anaemia = models.CharField(max_length=100,null=True)
    renal = models.CharField(max_length=100,null=True)
    cardiac = models.CharField(max_length=100,null=True)
    accident = models.CharField(max_length=100,null=True)
    mentalhealth = models.CharField(max_length=100,null=True)
    gastro = models.CharField(max_length=100,null=True)
    skin = models.CharField(max_length=100,null=True)
    cancer = models.CharField(max_length=100,null=True)
    other = models.CharField(max_length=100,null=True)
    mobility = models.CharField(max_length=100,null=True)
    personal = models.CharField(max_length=100,null=True)
    activities = models.CharField(max_length=100,null=True)
    pain = models.CharField(max_length=100,null=True)
    anxiety = models.CharField(max_length=100,null=True)
    health = models.CharField(max_length=100,null=True)
    
class ParticipantAnswer(models.Model):
    health_card = models.ForeignKey(HealthCard,null=True)
    participant = models.ForeignKey(Participant,null=True)
    life_a = models.CharField(max_length=20,null=True)
    life_b = models.CharField(max_length=20,null=True)
    answer = models.CharField(max_length=20,null=True)