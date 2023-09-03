from django.urls import path
from . import views



app_name='main'

urlpatterns = [
    # path("", views.index, name="index"),
    path('', views.all_products , name ="index"),
    
    # http://127.0.0.1:8080/api/product/
    path('product/', views.VehichleList.as_view()),
    # http://127.0.0.1:8080/api/product/2/
    path('product/<int:pk>/', views.VehichleDetail.as_view()),
    
    
    
    # path('',views.now, name="block"),
    # path('',views.MainView.as_view(), name="index"),
    # path('register/',views.add_memoir, name="registermemoir"),
    # path('showuser/',views.ShowUserForBlockView.as_view(), name="showuser"),
    # path('block/',views.block, name="block"),
    # path('unblock/',views.unblock, name="unblock"),


]
