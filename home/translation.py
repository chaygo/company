from modeltranslation.translator import translator, TranslationOptions
from .models import ContactMessage,AboutUs,Achievement,Blog,Slider
from service.models import Service 
from products.models import Product,Category

class  AboutUsTranslationOptions(TranslationOptions):
    fields=['title','description',]
class AchievementTranslationOptions(TranslationOptions):
    fields=['name',]
class BlogTranslationOptions(TranslationOptions):
    fields=['user','description','header']
class ServiceTranslationOptions(TranslationOptions):
    fields=['title','description']
class CategoryTranslationOptions(TranslationOptions):
    fields=['title']
class ProductTranslationOptions(TranslationOptions):
    fields=['title','description']
class SliderTranslationOptions(TranslationOptions):
    fields=['header','description']



translator.register(AboutUs,AboutUsTranslationOptions)
translator.register(Achievement,AchievementTranslationOptions)
translator.register(Blog,BlogTranslationOptions)
translator.register(Service,ServiceTranslationOptions)
translator.register(Category,CategoryTranslationOptions)
translator.register(Product,ProductTranslationOptions)
translator.register(Slider,SliderTranslationOptions)