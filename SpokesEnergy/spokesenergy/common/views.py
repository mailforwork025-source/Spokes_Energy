from django.views import View
from django.shortcuts import render, redirect

import random, string
import json
from datetime import timedelta, date, datetime
from django.db import transaction

from Project import settings
from django.http import JsonResponse, HttpResponse
from django.contrib import messages
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.db.models import Case, When, BooleanField, Q
from datetime import timedelta, date, datetime
from administrator.forms import ContactUsMessageForm
from Project.utils import get_error, utc_now, render_to_pdf
from Project.utils import check_recaptcha
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


class Home(View):
    def get(self, request):
        context = {}
        patners = PatnersDetails.objects.filter(is_active=True).order_by("-id")
        service = ServiceDetails.objects.filter(is_active=True,).order_by(
            "-id"
        )[:9]
        testimonial = Testimonial.objects.filter(is_active=True).order_by("-id")
        context["testimonial"] = testimonial
        context["patners"] = patners
        context["service"] = service
        context["recaptcha_site_key"] = settings.RECAPTCHA_SITE_KEY
        return render(request, "public/index.html", context)


class adminHome(View):
    def get(self, request):
        return render(request, "admin/home/home.html")


class AboutPublic(View):
    def get(self, request):
        context = {}
        patners = PatnersDetails.objects.filter(is_active=True).order_by("-id")
        context["patners"] = patners
        return render(request, "public/about.html", context)


class ProductPublic(View):
    def get(self, request):

        product = ProductsDetails.objects.filter(
            is_active=True,
        ).order_by("-id")
        items_per_page = request.GET.get("item_per_page", 9)
        paginator = Paginator(product, items_per_page)
        page = request.GET.get("page")
        try:
            product = paginator.page(page)
        except PageNotAnInteger:
            product = paginator.page(1)
        except EmptyPage:
            product = paginator.page(paginator.num_pages)

        return render(request, "public/product.html", {"page": product})


class ServicesPublic(View):
    def get(self, request):

        service = ServiceDetails.objects.filter(
            is_active=True,
        ).order_by("-id")
        items_per_page = request.GET.get("item_per_page", 9)
        paginator = Paginator(service, items_per_page)
        page = request.GET.get("page")
        try:
            service = paginator.page(page)
        except PageNotAnInteger:
            service = paginator.page(1)
        except EmptyPage:
            service = paginator.page(paginator.num_pages)

        return render(request, "public/services.html", {"page": service})


class GalleryPublic(View):
    def get(self, request):

        gallery = GalleryDetails.objects.filter(
            is_active=True,
        ).order_by("-id")
        items_per_page = request.GET.get("item_per_page", 9)
        paginator = Paginator(gallery, items_per_page)
        page = request.GET.get("page")
        try:
            gallery = paginator.page(page)
        except PageNotAnInteger:
            gallery = paginator.page(1)
        except EmptyPage:
            gallery = paginator.page(paginator.num_pages)
        return render(request, "public/gallery.html", {"page": gallery})


class BlogPublic(View):
    def get(self, request):
        blogs = BlogDetails.objects.filter(
            is_active=True,
        ).order_by("-id")
        items_per_page = request.GET.get("item_per_page", 9)
        paginator = Paginator(blogs, items_per_page)
        page = request.GET.get("page")
        try:
            blogs = paginator.page(page)
        except PageNotAnInteger:
            blogs = paginator.page(1)
        except EmptyPage:
            blogs = paginator.page(paginator.num_pages)
        return render(request, "public/blog.html", {"page": blogs})


class BlogDetailsPublic(View):
    def get(self, request, pk):
        blog = BlogDetails.objects.filter(is_active=True, id=pk).first()
        if not blog:
            messages.error(request, "Unknown Data")

        prev_blog = (
            BlogDetails.objects.filter(is_active=True)
            .filter(id__lt=pk)
            .order_by("id")
            .first()
        )
        next_blog = (
            BlogDetails.objects.filter(id__gt=pk, is_active=True).order_by("id").first()
        )
        return render(
            request,
            "public/blog-details.html",
            {
                "blog": blog,
                "prev_blog": prev_blog,
                "next_blog": next_blog,
            },
        )


class TermsConditionsPublic(View):
    def get(self, request):
        return render(request, "public/terms-conditions.html")


class ContactPublic(View):
    def get(self, request):
        context = {}
        context["recaptcha_site_key"] = settings.RECAPTCHA_SITE_KEY
        return render(request, "public/contact.html", context)

    def post(self, request):
        response_dict = {}
        recaptcha_token = request.POST.get("recaptcha_token")
        try:
            check_recaptcha(recaptcha_token)
        except Exception as e:
            response_dict["reason"] = str(e)
            messages.error(request, response_dict["reason"])
            return redirect(request.GET.get("return") or "common:contact")

        form = ContactUsMessageForm(request.POST)
        if form.is_valid():
            form.save()
            messages.success(request, "Submit successfully")
        else:
            response_dict["reason"] = get_error(form)
            messages.error(request, response_dict["reason"])
        return redirect(request.GET.get("return") or "common:contact")