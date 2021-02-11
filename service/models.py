from django.db import models
from ckeditor.fields import RichTextField
from ckeditor_uploader.fields import RichTextUploadingField
from django.utils.safestring import mark_safe
from django.utils.translation import ugettext_lazy as _

# Create your models here.
class Service(models.Model):
    Status=(
        ('Yes','Yes'),
        ('No','No'),
    )
    title=models.CharField(_("title"),max_length=300)
    status=models.CharField(_("status"),max_length=10,choices=Status)
    image=models.ImageField(_("image"),upload_to='images/service')
    description=RichTextUploadingField(_("description"),)
    create_at=models.DateField(_("create_at"),auto_now_add=True)
    update_at=models.DateField(_("update_at"),auto_now=True)
    def image_tag(self):
        return mark_safe('<img src="%s"  height="50" />' % (self.image.url))
    image_tag.short_description='Image'
    def __str__(self):
        return self.title
class ServicePicture(models.Model):
    service=models.ForeignKey("Service", on_delete=models.CASCADE)
    title=models.CharField(_("title"),max_length=50)
    image=models.ImageField(_("image"),upload_to='images/service')
    def __str__(self):
        return self.title


