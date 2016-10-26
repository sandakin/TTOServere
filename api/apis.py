'''
Created on Aug 17, 2016

@author: ranjana wijerathne
'''

from rest_framework.views import APIView
from rest_framework.decorators import detail_route
from rest_framework import viewsets
from rest_framework.permissions import AllowAny,IsAuthenticated
from rest_framework.authentication import BasicAuthentication

from django.http import JsonResponse
from django.http.response import HttpResponse

from database.models import HealthCard,HealthState,Participant,ParticipantAnswer,DefaultSetting
from api.serializers import HealthCardSerializer,HealthStateSerializer,ParticipantSerializer,ParticipantAnswerSerializer,DefaultSettingsSerializer

import csv

class AdminDefaultSettingsViewSet(viewsets.ModelViewSet):
    authentication_classes = (BasicAuthentication,)
    queryset = DefaultSetting.objects.all()
    serializer_class = DefaultSettingsSerializer
    permission_classes = (IsAuthenticated,)

class HealthCardViewSet(viewsets.ModelViewSet):
    queryset = HealthCard.objects.all()
    serializer_class = HealthCardSerializer
    permission_classes = (AllowAny,)
    http_method_names = ['get']
    
class AdminHealthCardViewSet(viewsets.ModelViewSet):
    authentication_classes = (BasicAuthentication,)
    queryset = HealthCard.objects.all()
    serializer_class = HealthCardSerializer
    permission_classes = (IsAuthenticated,)
    
    @detail_route(methods=['get'])
    def set_default(self,request,pk=None):
        HealthCard.objects.update(status='0')
        HealthCard.objects.filter(id=request.GET.get('card')).update(status='1')
        return self.retrieve(request); 
    
# class DefaultHealthCardViewSet(viewsets.ModelViewSet):
#     queryset = DefaultHealthCard.objects.all()
#     serializer_class = DefaultHealthStateSerializer
#     permission_classes = (AllowAny,)
#     http_method_names = ['get']
#     
# class AdminDefaultHealthCardViewSet(viewsets.ModelViewSet):
#     authentication_classes = (BasicAuthentication,)
#     queryset = DefaultHealthCard.objects.all()
#     serializer_class = DefaultHealthStateSerializer
#     permission_classes = (IsAuthenticated,)
    
class HealthStateViewSet(viewsets.ModelViewSet):
    queryset = HealthState.objects.all()
    serializer_class = HealthStateSerializer
    permission_classes = (AllowAny,)
    http_method_names = ['get']
    
    def get_queryset(self):
        try:
            return HealthState.objects.filter(health_card_id=self.kwargs['param'])
        except Exception:
            return HealthState.objects.all()
        
class AdminHealthStateViewSet(viewsets.ModelViewSet):
    authentication_classes = (BasicAuthentication,)
    queryset = HealthState.objects.all()
    serializer_class = HealthStateSerializer
    permission_classes = (IsAuthenticated,)
    
    def get_queryset(self):
        try:
            return HealthState.objects.filter(health_card_id=self.kwargs['param'])
        except Exception:
            return HealthState.objects.all()
        
class HealthCardStatesViewSet(viewsets.ModelViewSet):
    data=DefaultSetting.objects.filter(id='1').first()
    count = data.card_count
    queryset = HealthCard.objects.filter(status='0').order_by('?')[:count] 
    serializer_class = HealthCardSerializer
    permission_classes = (AllowAny,)
    http_method_names = ['get']
    
class DefaultHealthCardStatesViewSet(viewsets.ModelViewSet):
    queryset = HealthCard.objects.filter(status='1')
    serializer_class = HealthCardSerializer
    permission_classes = (AllowAny,)
    http_method_names = ['get']
    
class AdminHealthCardStatesViewSet(viewsets.ModelViewSet):
    authentication_classes = (BasicAuthentication,)
    permission_classes = (IsAuthenticated,)
    queryset = HealthCard.objects.filter(status='0').order_by('?')
    serializer_class = HealthCardSerializer
    
class ParticipantViewSet(viewsets.ModelViewSet):
    queryset = Participant.objects.all()
    serializer_class = ParticipantSerializer
    permission_classes = (AllowAny,)
    http_method_names = ['post']
    
class AdminParticipantViewSet(viewsets.ModelViewSet):
    authentication_classes = (BasicAuthentication,)
    queryset = Participant.objects.all()
    serializer_class = ParticipantSerializer
    permission_classes = (IsAuthenticated,)
    
class ParticipantAnswerViewSet(viewsets.ModelViewSet):
    queryset = ParticipantAnswer.objects.all()
    serializer_class = ParticipantAnswerSerializer
    permission_classes = (AllowAny,)
    http_method_names = ['post']
    
class AdminParticipantAnswerViewSet(viewsets.ModelViewSet):
    authentication_classes = (BasicAuthentication,)
    queryset = ParticipantAnswer.objects.all()
    serializer_class = ParticipantAnswerSerializer
    permission_classes = (IsAuthenticated,)
    
class Login(APIView):
    authentication_classes = (BasicAuthentication,)
    permission_classes = (IsAuthenticated,)
    
    def get(self,request):  
        try:
            return JsonResponse({'detail': 'success'})
        
        except Exception:
            return JsonResponse({'detail': 'error'})
        
class CSVFile(APIView):
    authentication_classes = (BasicAuthentication,)
    permission_classes = (IsAuthenticated,)
    
    def get(self,request):
        try:
            response = HttpResponse(content_type='text/csv')
            response['Content-Disposition'] = 'attachment; filename="csvfile.csv"'
            writer = csv.writer(response)
            
            result = ParticipantAnswer.objects.all()
            result_ = Participant.objects.all();
           
            opt = result.model._meta
            field_names = [field.name for field in opt.fields]
            opt_ = result_.model._meta
            field_names_ = [field.name for field in opt_.fields]
            
            writer.writerow(field_names_+field_names)
            
            for obj in result:
                #print obj.participant.id
                try:
                    result_ = result_.filter(id=obj.participant.id)
                    
                    
                    writer.writerow([getattr(result_[0], field) for field in field_names_]+[getattr(obj, field) for field in field_names])
                    
                except Exception as e:    
                    pass
                
            return response
        
        except Exception as e:
            raise Exception(e)   