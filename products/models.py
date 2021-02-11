from django.db import models
from ckeditor_uploader.fields import RichTextUploadingField
from django.utils.translation import ugettext_lazy as _

# Create your models here.
class Category(models.Model):
    title=models.CharField(_("title"),max_length=100)
    parent=models.ForeignKey("self", on_delete=models.CASCADE,blank=True,null=True,related_name='children')
    slug=models.CharField(_("slug"),max_length=50)
    create_at=models.DateTimeField(_("create_at"),auto_now_add=True)
    update_at=models.DateTimeField(_("update_at"),auto_now=True)
    def __str__(self):
        return self.title
class Product(models.Model):
    category=models.ForeignKey("Category", on_delete=models.CASCADE)
    title=models.CharField(_("title"),max_length=100)
    description=RichTextUploadingField(_("description"),)
    visible=models.BooleanField(_("visible"),default=False)
    image=models.ImageField(_("image"),upload_to='image/products')
    create_at=models.DateTimeField(_("create_at"),auto_now_add=True)
    update_at=models.DateTimeField(_("update_at"),auto_now=True)
    def __str__(self):
        return self.title
    

   