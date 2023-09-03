""" serializers to parse into json using in DRF """
from rest_framework import serializers
from . import models

class VehicleSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Vehichle
        fields = ['id','name','is_active','brand','age']