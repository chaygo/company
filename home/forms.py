from .models import ContactMessage
from django import forms


class ContactForm(forms.ModelForm):
    class Meta:
        model=ContactMessage
        fields=['name','email','message','subject']
        widgets={
            'name':forms.TextInput(attrs={'class':'form-control','placeholder':'Your name & surname'}),
            'email':forms.TextInput(attrs={'class':'form-control','placeholder':'Your email'}),
            'subject':forms.TextInput(attrs={'class':'form-control','placeholder':'Your subject'}),
            'message':forms.TextInput(attrs={'class':'form-control','placeholder':'Your message','rows':'5'}),
        }