from django.contrib import admin
from .models import ContactMessage,Setting,Blog,AboutUs,clients,AboutPicture,Achievement,Slider
# Register your models here.

class AboutPicture(admin.TabularInline):
    model=AboutPicture
    extra=5


class AboutUsAdmin(admin.ModelAdmin):
    
    list_display=['title','image_tag']
    readonly_fields=('image_tag',)
    inlines=[AboutPicture]
   
admin.site.register(ContactMessage)
admin.site.register(Setting)
admin.site.register(Blog)
admin.site.register(AboutUs,AboutUsAdmin)
admin.site.register(clients)
admin.site.register(Achievement)
admin.site.register(Slider)