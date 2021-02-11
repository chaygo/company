from django.db import models
from ckeditor_uploader.fields import RichTextUploadingField
from django.utils.safestring import mark_safe
from django.utils.translation import ugettext_lazy as _


class Setting(models.Model):
    Status=(
        ('True','Yes'),
        ('False','No'),

    )
    title=models.CharField(_('title'),max_length=150)
    keywords=models.CharField(_('keyword'), max_length=255)
    description=models.CharField( _('description'),max_length=255)
    company=models.CharField( _('company'),max_length=50)
    address=models.CharField(_('address'), max_length=100)
    phone=models.CharField( _('phone'),max_length=20,blank=True)
    email=models.CharField(_('email'), max_length=50,blank=True)
    smtpserver=models.CharField(_('smtpserver'),max_length=50,blank=True)
    smtpemail=models.CharField(_('smtpemail'), max_length=50,blank=True)
    smtppassword=models.CharField(_('smtppassword'), max_length=50,blank=True)
    smtpport=models.CharField(_('smtpport'), max_length=50,blank=True)
    icon=models.ImageField(_('icon'),blank=True, upload_to='images/')
    aboutus=RichTextUploadingField(_('aboutus'),blank=True)
    contact=RichTextUploadingField(_('contact'),blank=True)
    references=RichTextUploadingField(_('references'),blank=True)
    status=models.CharField(_('status'),max_length=10,choices=Status)
    create_at=models.DateTimeField(_('create_at'),auto_now_add=True)
    update_at=models.DateTimeField(_('update_at'),auto_now=True)
    def __str__(self):
        return self.title

class ContactMessage(models.Model):
    name=models.CharField(_('name'),max_length=300,blank=True)
    email=models.EmailField(_('email'),max_length=254,blank=True)
    subject=models.CharField(_('subject'),max_length=500,blank=True)
    message=models.TextField(_('message'),blank=True)
    create_at=models.DateTimeField(_('create_at'), auto_now_add=True)
    update_at=models.DateTimeField(_('update_at'),auto_now=True)
    def __str__(self):
        return self.name
class Blog(models.Model):
    user=models.CharField(_('user'),max_length=100)
    image=models.ImageField(_('image'),upload_to='images/blog')
    header=models.CharField(_('header'),max_length=200)
    description=RichTextUploadingField(_('description'),)
    numbercomment=models.IntegerField(_('numbercomment'),)
    create_at=models.DateTimeField(_('create_at'), auto_now_add=True)
    update_at=models.DateTimeField(_('update_at'),auto_now=True)
    def __str__(self):
        return self.header
class AboutUs (models.Model):
    image=models.ImageField(_('image'),upload_to='images/aboutus')
    title=models.CharField(_('title'),max_length=250)
    description=RichTextUploadingField(_('description'),)
    def image_tag(self):
        return mark_safe('<img src="%s"  height="50" />' % (self.image.url))
    image_tag.short_description=_('Image')
    def __str__(self):
        return self.title
class AboutPicture(models.Model):
    aboutus=models.ForeignKey("Aboutus", on_delete=models.CASCADE)
    title=models.CharField(_('title'),max_length=50)
    image=models.ImageField(_('image'),upload_to='images/aboutus')
    def __str__(self):
        return self.title
class clients(models.Model):
    name=models.CharField(_('name'),max_length=150)
    image=models.ImageField(_('image'),upload_to='image/clients')
    def __str__(self):
        return self.name
class Achievement(models.Model):
    name=models.CharField(_('name'),max_length=50)
    image=models.ImageField(_('image'),upload_to='image/achievement')
    def __str__(self):
        return self.name
class Slider(models.Model):
    image=models.ImageField(_("image"), upload_to='image/slider')
    header=models.CharField(_("header"), max_length=50)
    description=models.TextField(_("description"))
    def __str__(self):
        return self.header
