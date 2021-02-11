from django import template
from home.models import Setting,Blog,AboutUs,AboutPicture,clients,Achievement,Slider
from products.models import Product,Category
from service.models import Service,ServicePicture

from company import settings
register = template.Library()

@register.simple_tag

def contacttag(): 
    
    return Setting.objects.all()

@register.simple_tag
def servicetag():
    return Service.objects.all()

@register.simple_tag
def blogtag():
    return Blog.objects.all()
@register.inclusion_tag("home/services.html")
def show_service(service_id):
    service=Service.objects.get(id=service_id)
    service_image=ServicePicture.objects.filter(service=service)
    return {
        "service":service,
        "service_image":service_image,
        
    }


@register.simple_tag
def aboutustag():
    return AboutUs.objects.all()
@register.simple_tag
def producttag():
    return Product.objects.filter(visible=True)
@register.simple_tag
def clienttag():
    return clients.objects.all()
@register.simple_tag
def  achievementtag():

    return Achievement.objects.all()
@register.simple_tag()
def slidertag():
    
    return Slider.objects.all()




