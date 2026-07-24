from django.db import models


class ContactUsMessage(models.Model):

    name = models.CharField(null=False, blank=False, max_length=255)
    email = models.EmailField(null=False, blank=False)
    mobile_no = models.CharField(max_length=30, null=True, blank=True)
    message = models.TextField(max_length=1000, null=True, blank=True)

    is_active = models.BooleanField(null=False, blank=True, default=True)
    created = models.DateTimeField(auto_now_add=True)


class BlogDetails(models.Model):

    title = models.CharField(null=False, blank=False, max_length=255)
    author = models.CharField(null=True, blank=True, max_length=255)
    image = models.ImageField(
        null=True,
        blank=True,
    )
    author_image = models.ImageField(
        null=True,
        blank=True,
    )
    description = models.TextField(null=True, blank=True)
    date = models.DateField(null=True, blank=True)

    is_active = models.BooleanField(null=False, blank=True, default=True)
    created = models.DateTimeField(auto_now_add=True)


class ProductsDetails(models.Model):

    title = models.CharField(null=False, blank=False, max_length=255)
    image = models.ImageField(
        null=True,
        blank=True,
    )
    description = models.TextField(null=True, blank=True)

    is_active = models.BooleanField(null=False, blank=True, default=True)
    created = models.DateTimeField(auto_now_add=True)


class PatnersDetails(models.Model):

    title = models.CharField(null=False, blank=False, max_length=255)
    image = models.ImageField(
        null=True,
        blank=True,
    )
    description = models.TextField(null=True, blank=True)

    is_active = models.BooleanField(null=False, blank=True, default=True)
    created = models.DateTimeField(auto_now_add=True)


class ServiceDetails(models.Model):

    title = models.CharField(null=False, blank=False, max_length=255)
    main_image = models.ImageField(
        null=True,
        blank=True,
    )
    description = models.TextField(null=True, blank=True)

    is_active = models.BooleanField(null=False, blank=True, default=True)
    created = models.DateTimeField(auto_now_add=True)


class ServiceImage(models.Model):
    service = models.ForeignKey(
        ServiceDetails,
        null=False,
        related_name="service_image",
        on_delete=models.CASCADE,
    )
    image = models.ImageField(
        null=True,
        blank=True,
    )

    is_active = models.BooleanField(null=False, blank=True, default=True)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)


class GalleryDetails(models.Model):

    title = models.CharField(null=False, blank=False, max_length=255)
    main_image = models.ImageField(
        null=True,
        blank=True,
    )
    description = models.TextField(null=True, blank=True)

    is_active = models.BooleanField(null=False, blank=True, default=True)
    created = models.DateTimeField(auto_now_add=True)


class Testimonial(models.Model):

    title = models.CharField(null=False, blank=False, max_length=255)
    added_by = models.CharField(null=False, blank=False, max_length=255)
    image = models.ImageField(
        null=True,
        blank=True,
    )
    description = models.TextField(null=True, blank=True)
    date = models.DateField(null=True, blank=True)

    is_active = models.BooleanField(null=False, blank=True, default=True)
    created = models.DateTimeField(auto_now_add=True)