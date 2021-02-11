from django.urls import path
from . import views

app_name='home'
urlpatterns = [
    path('',views.index,name='index'),
    path('service/',views.service,name='service'),
    path('deneme/',views.deneme,name="deneme"),
    path('blog/',views.blog,name="blog"),
    path('blog/<int:pk>/',views.blogdetail,name="blogdetail"),
    path('portfolio/',views.portfolio,name="portfolio"),
    
]
