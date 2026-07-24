from django.shortcuts import render, redirect
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.db import transaction
from django.http import JsonResponse, HttpResponse

from django.shortcuts import get_object_or_404
from django.views import View
from django.views.generic.base import TemplateView
from django.contrib import messages
from Project.utils import get_error, utc_now, render_to_pdf
from django.views import View
from user.permissions import (
    IsAdminMixin,
    IsActiveMixin,
)

from datetime import timedelta, date, datetime
from django.db.models import (
    Prefetch,
    Count,
    Case,
    When,
    Value,
    F,
    Q,
    BooleanField,
    CharField,
    Func,
)
from django.http import HttpResponse
from administrator.forms import (
    BlogForm,
    GalleryForm,
    PatnerForm,
    ProductForm,
    ServiceForm,
    TestimonialForm,
)
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


class LandingPage(IsActiveMixin, IsAdminMixin, TemplateView):
    template_name = "admin/blog/blog.html"

    def get(self, request):
        context = {}
        search = request.GET.get("search")

        blog = BlogDetails.objects.filter(is_active=True).order_by("-id")
        if search:

            blog = blog.annotate(lower_title=Func(F("title"), function="LOWER")).filter(
                lower_title__icontains=search
            )
        items_per_page = request.GET.get("item_per_page", 50)

        paginator = Paginator(blog, items_per_page)  # Pagination
        page = request.GET.get("page")
        try:
            blog = paginator.page(page)
        except PageNotAnInteger:
            blog = paginator.page(1)
        except EmptyPage:
            blog = paginator.page(paginator.num_pages)
        context = {
            "user": request.session["user"],
            "page": blog,
            "search": search,
        }
        return render(request, self.template_name, context)

    def post(self, request):
        response_dict = {}
        form = BlogForm(request.POST, request.FILES)
        pr_file = []
        if form.is_valid():
            with transaction.atomic():
                project = form.save()
                messages.success(request, "Added successfully")
        else:
            response_dict["reason"] = get_error(form)
            messages.error(request, response_dict["reason"])
        return redirect(request.GET.get("return") or "administrator:landing-page")


class EditBlog(IsActiveMixin, IsAdminMixin, TemplateView):
    def post(self, request, pk):
        response_dict = {}
        blog = BlogDetails.objects.filter(is_active=True, id=pk).first()
        if not blog:
            response_dict["reason"] = "Unknown data"
            messages.error(request, response_dict["reason"])
            return redirect(request.GET.get("return") or "administrator:landing-page")
        form = BlogForm(request.POST, request.FILES, instance=blog)
        if not request.FILES.get("image"):
            del form.fields["image"]

        if not form.is_valid():
            messages.error(request, get_error(form))
        else:
            with transaction.atomic():
                form.save()
            messages.success(request, "Updated successfully")
        return redirect(request.GET.get("return") or "administrator:landing-page")


class DeleteBlog(IsActiveMixin, IsAdminMixin, TemplateView):
    def post(self, request, pk):
        response_dict = {}
        blog = BlogDetails.objects.filter(is_active=True, id=pk).first()
        if not blog:
            response_dict["reason"] = "Unknown data"
            messages.error(request, response_dict["reason"])
            return redirect(request.GET.get("return") or "administrator:landing-page")

        blog.is_active = False
        blog.save()
        messages.success(request, "Deleted successfully")
        return redirect(request.GET.get("return") or "administrator:landing-page")


class ListGallery(IsActiveMixin, IsAdminMixin, TemplateView):
    template_name = "admin/gallery/gallery.html"

    def get(self, request):
        context = {}
        search = request.GET.get("search")

        gallery = GalleryDetails.objects.filter(is_active=True).order_by("-id")
        if search:
            gallery = gallery.annotate(
                lower_title=Func(F("title"), function="LOWER")
            ).filter(lower_title__icontains=search)
        items_per_page = request.GET.get("item_per_page", 50)

        paginator = Paginator(gallery, items_per_page)  # Pagination
        page = request.GET.get("page")
        try:
            gallery = paginator.page(page)
        except PageNotAnInteger:
            gallery = paginator.page(1)
        except EmptyPage:
            gallery = paginator.page(paginator.num_pages)
        context = {
            "user": request.session["user"],
            "page": gallery,
            "search": search,
        }
        return render(request, self.template_name, context)

    def post(self, request):
        response_dict = {}
        form = GalleryForm(request.POST, request.FILES)
        pr_file = []
        if form.is_valid():
            with transaction.atomic():
                project = form.save()
                messages.success(request, "Added successfully")
        else:
            response_dict["reason"] = get_error(form)
            messages.error(request, response_dict["reason"])
        return redirect(request.GET.get("return") or "administrator:list-gallery")


class EditGallery(IsActiveMixin, IsAdminMixin, TemplateView):
    def post(self, request, pk):
        response_dict = {}
        gallery = GalleryDetails.objects.filter(is_active=True, id=pk).first()
        if not gallery:
            response_dict["reason"] = "Unknown data"
            messages.error(request, response_dict["reason"])
            return redirect(request.GET.get("return") or "administrator:list-gallery")
        form = GalleryForm(request.POST, request.FILES, instance=gallery)
        if not request.FILES.get("main_image"):
            del form.fields["main_image"]

        if not form.is_valid():
            messages.error(request, get_error(form))
        else:
            with transaction.atomic():
                form.save()
            messages.success(request, "Updated successfully")
        return redirect(request.GET.get("return") or "administrator:list-gallery")


class DeleteGallery(IsActiveMixin, IsAdminMixin, TemplateView):
    def post(self, request, pk):
        response_dict = {}
        gallery = GalleryDetails.objects.filter(is_active=True, id=pk).first()
        if not gallery:
            response_dict["reason"] = "Unknown data"
            messages.error(request, response_dict["reason"])
            return redirect(request.GET.get("return") or "administrator:list-gallery")

        gallery.is_active = False
        gallery.save()
        messages.success(request, "Deleted successfully")
        return redirect(request.GET.get("return") or "administrator:list-gallery")


class ListContactUs(IsActiveMixin, IsAdminMixin, TemplateView):
    template_name = "admin/contact/contact.html"

    def get(self, request):
        context = {}
        search = request.GET.get("search")
        from_date = request.GET.get("from_date", None)
        to_date = request.GET.get("to_date", None)

        now = utc_now()
        if from_date and to_date:
            if from_date > to_date:
                messages.error(request, "Invalid Date")
                return render(request, self.template_name, context)
        else:
            to_date = utc_now().date()
            from_date = to_date - timedelta(30)
            to_date = to_date.strftime("%Y-%m-%d")
            from_date = from_date.strftime("%Y-%m-%d")

        contact = ContactUsMessage.objects.filter(is_active=True).order_by("-id")
        if search:
            contact = contact.annotate(
                lower_name=Func(F("name"), function="LOWER"),
                lower_mail=Func(F("email"), function="LOWER"),
                lower_message=Func(F("message"), function="LOWER"),
            ).filter(
                Q(lower_name__icontains=search)
                | Q(lower_mail__icontains=search)
                | Q(lower_message__icontains=search)
            )
        items_per_page = request.GET.get("item_per_page", 50)

        paginator = Paginator(contact, items_per_page)  # Pagination
        page = request.GET.get("page")
        try:
            contact = paginator.page(page)
        except PageNotAnInteger:
            contact = paginator.page(1)
        except EmptyPage:
            contact = paginator.page(paginator.num_pages)
        context = {
            "user": request.session["user"],
            "page": contact,
            "search": search,
            "from_date": from_date,
            "to_date": to_date,
        }
        return render(request, self.template_name, context)


class ListPatners(IsActiveMixin, IsAdminMixin, TemplateView):
    template_name = "admin/patner/patner.html"

    def get(self, request):
        context = {}
        search = request.GET.get("search")

        patner = PatnersDetails.objects.filter(is_active=True).order_by("-id")
        if search:
            patner = patner.annotate(
                lower_title=Func(F("title"), function="LOWER")
            ).filter(lower_title__icontains=search)
        items_per_page = request.GET.get("item_per_page", 50)

        paginator = Paginator(patner, items_per_page)  # Pagination
        page = request.GET.get("page")
        try:
            patner = paginator.page(page)
        except PageNotAnInteger:
            patner = paginator.page(1)
        except EmptyPage:
            patner = paginator.page(paginator.num_pages)
        context = {
            "user": request.session["user"],
            "page": patner,
            "search": search,
        }
        return render(request, self.template_name, context)

    def post(self, request):
        response_dict = {}
        form = PatnerForm(request.POST, request.FILES)
        pr_file = []
        if form.is_valid():
            with transaction.atomic():
                project = form.save()
                messages.success(request, "Added successfully")
        else:
            response_dict["reason"] = get_error(form)
            messages.error(request, response_dict["reason"])
        return redirect(request.GET.get("return") or "administrator:list-patners")


class EditPatners(IsActiveMixin, IsAdminMixin, TemplateView):
    def post(self, request, pk):
        response_dict = {}
        patner = PatnersDetails.objects.filter(is_active=True, id=pk).first()
        if not patner:
            response_dict["reason"] = "Unknown data"
            messages.error(request, response_dict["reason"])
            return redirect(request.GET.get("return") or "administrator:list-patners")

        form = PatnerForm(request.POST, request.FILES, instance=patner)
        if not request.FILES.get("image"):
            del form.fields["image"]

        if not form.is_valid():
            messages.error(request, get_error(form))
        else:
            with transaction.atomic():
                form.save()
            messages.success(request, "Updated successfully")
        return redirect(request.GET.get("return") or "administrator:list-patners")


class DeletePatners(IsActiveMixin, IsAdminMixin, TemplateView):
    def post(self, request, pk):
        response_dict = {}
        patner = PatnersDetails.objects.filter(is_active=True, id=pk).first()
        if not patner:
            response_dict["reason"] = "Unknown data"
            messages.error(request, response_dict["reason"])
            return redirect(request.GET.get("return") or "administrator:list-patners")

        patner.is_active = False
        patner.save()
        messages.success(request, "Deleted successfully")
        return redirect(request.GET.get("return") or "administrator:list-patners")


class ListProducts(IsActiveMixin, IsAdminMixin, TemplateView):
    template_name = "admin/product/product.html"

    def get(self, request):
        context = {}
        search = request.GET.get("search")

        product = ProductsDetails.objects.filter(is_active=True).order_by("-id")
        if search:
            product = product.annotate(
                lower_title=Func(F("title"), function="LOWER")
            ).filter(lower_title__icontains=search)
        items_per_page = request.GET.get("item_per_page", 50)

        paginator = Paginator(product, items_per_page)  # Pagination
        page = request.GET.get("page")
        try:
            product = paginator.page(page)
        except PageNotAnInteger:
            product = paginator.page(1)
        except EmptyPage:
            product = paginator.page(paginator.num_pages)
        context = {
            "user": request.session["user"],
            "page": product,
            "search": search,
        }
        return render(request, self.template_name, context)

    def post(self, request):
        response_dict = {}
        form = ProductForm(request.POST, request.FILES)
        pr_file = []
        if form.is_valid():
            with transaction.atomic():
                project = form.save()
                messages.success(request, "Added successfully")
        else:
            response_dict["reason"] = get_error(form)
            messages.error(request, response_dict["reason"])
        return redirect(request.GET.get("return") or "administrator:list-products")


class EditProducts(IsActiveMixin, IsAdminMixin, TemplateView):
    def post(self, request, pk):
        response_dict = {}
        product = ProductsDetails.objects.filter(is_active=True, id=pk).first()
        if not product:
            response_dict["reason"] = "Unknown data"
            messages.error(request, response_dict["reason"])
            return redirect(request.GET.get("return") or "administrator:list-products")

        form = ProductForm(request.POST, request.FILES, instance=product)
        if not request.FILES.get("image"):
            del form.fields["image"]

        if not form.is_valid():
            messages.error(request, get_error(form))
        else:
            with transaction.atomic():
                form.save()
            messages.success(request, "Updated successfully")
        return redirect(request.GET.get("return") or "administrator:list-products")


class DeleteProducts(IsActiveMixin, IsAdminMixin, TemplateView):
    def post(self, request, pk):
        response_dict = {}
        product = ProductsDetails.objects.filter(is_active=True, id=pk).first()
        if not product:
            response_dict["reason"] = "Unknown data"
            messages.error(request, response_dict["reason"])
            return redirect(request.GET.get("return") or "administrator:list-products")

        product.is_active = False
        product.save()
        messages.success(request, "Deleted successfully")
        return redirect(request.GET.get("return") or "administrator:list-products")


class ListService(IsActiveMixin, IsAdminMixin, TemplateView):
    template_name = "admin/service/service.html"

    def get(self, request):
        context = {}
        search = request.GET.get("search")

        service = ServiceDetails.objects.filter(is_active=True).order_by("-id")
        if search:
            service = service.annotate(
                lower_title=Func(F("title"), function="LOWER")
            ).filter(lower_title__icontains=search)
        items_per_page = request.GET.get("item_per_page", 50)

        paginator = Paginator(service, items_per_page)  # Pagination
        page = request.GET.get("page")
        try:
            service = paginator.page(page)
        except PageNotAnInteger:
            service = paginator.page(1)
        except EmptyPage:
            service = paginator.page(paginator.num_pages)
        context = {
            "user": request.session["user"],
            "page": service,
            "search": search,
        }
        return render(request, self.template_name, context)

    def post(self, request):
        response_dict = {}
        form = ServiceForm(request.POST, request.FILES)
        pr_file = []
        if form.is_valid():
            with transaction.atomic():
                service = form.save()
                for img in request.FILES.getlist("all_image"):
                    if img:
                        pr_file.append(ServiceImage(service=service, image=img))
                ServiceImage.objects.bulk_create(pr_file)
                messages.success(request, "Added successfully")
        else:
            response_dict["reason"] = get_error(form)
            messages.error(request, response_dict["reason"])
        return redirect(request.GET.get("return") or "administrator:list-service")


class EditService(IsActiveMixin, IsAdminMixin, TemplateView):
    template_name = "admin/service/edit_service.html"

    def get(self, request, pk):
        context = {}
        service = ServiceDetails.objects.filter(is_active=True, id=pk).first()
        if not service:
            response_dict["reason"] = "Unknown data"
            messages.error(request, response_dict["reason"])
            return redirect(request.GET.get("return") or "administrator:list-service")

        context = {
            "i": service,
        }
        return render(request, self.template_name, context)

    def post(self, request, pk):
        response_dict = {}
        service = ServiceDetails.objects.filter(is_active=True, id=pk).first()
        if not service:
            response_dict["reason"] = "Unknown data"
            messages.error(request, response_dict["reason"])
            return redirect(request.GET.get("return") or "administrator:list-service")

        form = ServiceForm(request.POST, request.FILES, instance=service)
        if not request.FILES.get("main_image"):
            del form.fields["main_image"]

        if not form.is_valid():
            messages.error(request, get_error(form))
        else:
            with transaction.atomic():
                form.save()
                pr_file = []
                ServiceImage.objects.filter(service=service,).exclude(
                    id__in=request.POST.getlist("file_id"),
                ).delete()
                for img in request.FILES.getlist("all_image"):
                    if img:
                        pr_file.append(ServiceImage(service=service, image=img))
                ServiceImage.objects.bulk_create(pr_file)
            messages.success(request, "Updated successfully")
        return redirect(request.GET.get("return") or "administrator:list-service")


class DeleteService(IsActiveMixin, IsAdminMixin, TemplateView):
    def post(self, request, pk):
        response_dict = {}
        service = ServiceDetails.objects.filter(is_active=True, id=pk).first()
        if not service:
            response_dict["reason"] = "Unknown data"
            messages.error(request, response_dict["reason"])
            return redirect(request.GET.get("return") or "administrator:list-service")
        ServiceImage.objects.filter(service=service).delete()
        service.is_active = False
        service.save()
        messages.success(request, "Deleted successfully")
        return redirect(request.GET.get("return") or "administrator:list-service")


class ListTestimonial(IsActiveMixin, IsAdminMixin, TemplateView):
    template_name = "admin/testimonial/testimonial.html"

    def get(self, request):
        context = {}
        search = request.GET.get("search")

        testimonial = Testimonial.objects.filter(is_active=True).order_by("-id")
        if search:
            testimonial = testimonial.annotate(
                lower_title=Func(F("title"), function="LOWER")
            ).filter(lower_title__icontains=search)
        items_per_page = request.GET.get("item_per_page", 50)

        paginator = Paginator(testimonial, items_per_page)  # Pagination
        page = request.GET.get("page")
        try:
            testimonial = paginator.page(page)
        except PageNotAnInteger:
            testimonial = paginator.page(1)
        except EmptyPage:
            testimonial = paginator.page(paginator.num_pages)
        context = {
            "user": request.session["user"],
            "page": testimonial,
            "search": search,
        }
        return render(request, self.template_name, context)

    def post(self, request):
        response_dict = {}
        form = TestimonialForm(request.POST, request.FILES)
        pr_file = []
        if form.is_valid():
            with transaction.atomic():
                form.save()
                messages.success(request, "Added successfully")
        else:
            response_dict["reason"] = get_error(form)
            messages.error(request, response_dict["reason"])
        return redirect(request.GET.get("return") or "administrator:list-testimonial")


class EditTestimonial(IsActiveMixin, IsAdminMixin, TemplateView):
    def post(self, request, pk):
        response_dict = {}
        testimonial = Testimonial.objects.filter(is_active=True, id=pk).first()
        if not testimonial:
            response_dict["reason"] = "Unknown data"
            messages.error(request, response_dict["reason"])
            return redirect(
                request.GET.get("return") or "administrator:list-testimonial"
            )

        form = TestimonialForm(request.POST, request.FILES, instance=testimonial)
        if not request.FILES.get("image"):
            del form.fields["image"]

        if not form.is_valid():
            messages.error(request, get_error(form))
        else:
            with transaction.atomic():
                form.save()
            messages.success(request, "Updated successfully")
        return redirect(request.GET.get("return") or "administrator:list-testimonial")


class DeleteTestimonial(IsActiveMixin, IsAdminMixin, TemplateView):
    def post(self, request, pk):
        response_dict = {}
        testimonial = Testimonial.objects.filter(is_active=True, id=pk).first()
        if not testimonial:
            response_dict["reason"] = "Unknown data"
            messages.error(request, response_dict["reason"])
            return redirect(
                request.GET.get("return") or "administrator:list-testimonial"
            )
        testimonial.is_active = False
        testimonial.save()
        messages.success(request, "Deleted successfully")
        return redirect(request.GET.get("return") or "administrator:list-testimonial")
