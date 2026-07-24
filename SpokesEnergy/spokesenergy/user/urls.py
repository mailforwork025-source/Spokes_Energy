from django.contrib import admin
from django.conf.urls import url
from user import views

urlpatterns = [
    url(r"^login/$", views.UserLogin.as_view(), name="login"),
    url(r"^change-password/$", views.ChangePassword.as_view(), name="change-password"),
    url(r"^logout/$", views.logout, name="logout"),
]
