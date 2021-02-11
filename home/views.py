from django.shortcuts import render
from django.http import HttpResponse,HttpResponseRedirect
from .forms import ContactForm
from .models import ContactMessage,Setting,Blog,AboutUs,AboutPicture
from products.models import Product,Category
from django.contrib import messages
from django.core.mail import send_mail,BadHeaderError
from django.conf import settings
from service.models import Service,ServicePicture
# Create your views here.

def index(request):
    return render(request,'home/index.html')
def contact(request):
   
    if request.method=='POST':

        message_name=request.POST.get('name')
        subject = request.POST.get('subject')
        message = request.POST.get('message')
        from_email = request.POST.get('email')
        send_mail(subject, message, from_email , ['charyyewa2014@gmail.com'],fail_silently=True)
        mes="Good!"
        return  render(request,'home/contact.html',{'mes':mes})
    
    return render(request,'home/contact.html')
def service(request):
    services=Service.objects.all()
    service=ServicePicture.objects.filter(service=services)
    return render(request,'home/service.html',{'services':services})
def deneme(request):
    return render(request,'home/deneme.html')
def blog(request):
    blog=Blog.objects.all()
    return render(request,'home/blog.html',{'blog':blog})
def aboutus(request):
    about=AboutUs.objects.get(pk=1)
    photos=AboutPicture.objects.filter(aboutus=about)
    return render(request,'home/aboutus.html',{'about':about,'photos':photos})
def portfolio(request):
    category=Category.objects.all()
    product=Product.objects.all()
    return render(request,'home/portfolio.html',{'category':category,'product':product})
def blogdetail(request,pk):
    blog=Blog.objects.get(id=pk)
    return render(request,'home/blogdetail.html',{'blog':blog})
