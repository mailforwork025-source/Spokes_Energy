from django.contrib import admin
from administrator.models import (
    BlogDetails,
    ContactUsMessage,
    ServiceDetails,
    ServiceImage,
    PatnersDetails,
    GalleryDetails,
    ProductsDetails,
    Testimonial,
)


admin.site.register(ContactUsMessage)
admin.site.register(BlogDetails)
admin.site.register(ServiceDetails)
admin.site.register(ServiceImage)
admin.site.register(PatnersDetails)
admin.site.register(GalleryDetails)
admin.site.register(ProductsDetails)
admin.site.register(Testimonial)