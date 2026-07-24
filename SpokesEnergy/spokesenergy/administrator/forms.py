from django.forms import ModelForm
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


class TestimonialForm(ModelForm):
    class Meta:
        model = Testimonial
        exclude = ["updated", "created", "is_active"]

    def __init__(self, *args, **kwargs):
        super(TestimonialForm, self).__init__(*args, **kwargs)
        self.fields["date"].input_formats = ["%d/%m/%Y"]


class ServiceForm(ModelForm):
    class Meta:
        model = ServiceDetails
        exclude = ["updated", "created", "is_active"]


class ProductForm(ModelForm):
    class Meta:
        model = ProductsDetails
        exclude = ["updated", "created", "is_active"]


class BlogForm(ModelForm):
    class Meta:
        model = BlogDetails
        exclude = ["updated", "created", "is_active"]

    def __init__(self, *args, **kwargs):
        super(BlogForm, self).__init__(*args, **kwargs)
        self.fields["date"].input_formats = ["%d/%m/%Y"]


class GalleryForm(ModelForm):
    class Meta:
        model = GalleryDetails
        exclude = ["updated", "created", "is_active"]


class PatnerForm(ModelForm):
    class Meta:
        model = PatnersDetails
        exclude = ["updated", "created", "is_active"]


class ContactUsMessageForm(ModelForm):
    class Meta:
        model = ContactUsMessage
        exclude = ["updated", "created", "is_active", "mobile_no"]