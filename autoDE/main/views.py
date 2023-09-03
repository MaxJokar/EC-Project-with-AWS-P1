from django.shortcuts import render
from .models import Vehichle

from django.core.paginator import Paginator

from django.http import HttpResponse




# DRF
from rest_framework.views import APIView
from rest_framework import generics
from rest_framework import permissions
from .serializers import VehicleSerializer
from . import models
from .models import Vehichle


def all_products(request):
    
    # Easy
    # page_obj = Vehichle.objects.all()  
    # return HttpResponse("Hello, world. You're at the blog index.")   
    # return render(request,'main/main_index.html',{'page_obj':page_obj} )
    # return render(request,'main/main.html',{'cars':cars} )


    #  with Paginator
    page_obj = Vehichle.objects.all() 
    paginator = Paginator(page_obj, 6)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    return render(request,'main/main_index.html',{'page_obj':page_obj} )

    
    
    #DRF
class VehichleList(generics.ListCreateAPIView):
    queryset = models.Vehichle.objects.all()
    serializer_class = VehicleSerializer
    permission_classes = [permissions.IsAuthenticated]


class VehichleDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = models.Vehichle.objects.all()
    serializer_class = VehicleSerializer
    permission_classes = [permissions.IsAuthenticated]