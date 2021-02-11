from django.contrib import admin
from .models import Service,ServicePicture
# Register your models here.

class ServicePicture(admin.TabularInline):
    model=ServicePicture
    extra=5


class ServiceAdmin(admin.ModelAdmin):
    
    list_display=['title','image_tag']
    readonly_fields=('image_tag',)
    inlines=[ServicePicture]
   




admin.site.register(Service,ServiceAdmin)