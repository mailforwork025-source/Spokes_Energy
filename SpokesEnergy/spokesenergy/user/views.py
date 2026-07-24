from django.shortcuts import render

from django.shortcuts import render, redirect
from django.views.generic.base import TemplateView
from user.models import UserProfile, Token
from django.shortcuts import get_object_or_404

from django.http import HttpResponse
from django.views import View
from django.views.decorators.csrf import csrf_exempt
import json
import datetime
from django.contrib.auth import authenticate, login, logout as auth_logout
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from user.permissions import (
    IsAdminMixin,
    IsActiveMixin,
)


class UserLogin(View):

    template_name = "public/login.html"

    def get(self, request):

        return render(request, self.template_name)

    def post(self, request):
        user_type = ""
        response_dict = {"success": False}
        landing_page_url = {
            "ADMIN": "administrator:landing-page",
        }
        username = request.POST.get("username")
        password = request.POST.get("password")
        authenticated = authenticate(username=username, password=password)
        try:
            user = UserProfile.objects.get(username=username)
        except UserProfile.DoesNotExist:
            response_dict[
                "reason"
            ] = "No account found for this username. Please signup."
            messages.error(request, response_dict["reason"])
        if not authenticated:
            response_dict["reason"] = "Invalid credentials."
            messages.error(request, response_dict["reason"])
            return redirect(request.GET.get("from") or "user:login")

        else:
            session_dict = {"real_user": authenticated.id}
            token, c = Token.objects.get_or_create(
                user=user, defaults={"session_dict": json.dumps(session_dict)}
            )

            user_type = authenticated.user_type
            request.session["data"] = {
                "user_id": user.id,
                "user_type": user.user_type,
                "token": token.key,
                "username": user.username,
                "status": user.is_active,
            }

            request.session["user"] = authenticated.username
            request.session["token"] = token.key
            request.session["status"] = user.is_active
            return redirect(landing_page_url[user_type])

            return redirect(request.GET.get("from") or "user:login")


class ChangePassword(IsActiveMixin, View):
    def post(self, request):
        username = request.POST.get("username")
        user = get_object_or_404(UserProfile, username=username)
        new_password = request.POST.get("new_password")
        confirm_password = request.POST.get("confirm_password")
        if len(new_password) < 8:
            messages.error(request, "Password should be at least 8 characters long")
            return redirect(request.GET.get("return"))
        elif confirm_password != new_password:
            messages.error(request, "Passwords do not match")
            return redirect(request.GET.get("return"))
        else:
            user.set_password(new_password)
            user.save()
            request.session.flush()
            logout(request)
            messages.success(request, "Password changed successfully")
        return redirect("user:login")


def logout(request, *args, **kwargs):
    request.session.flush()
    auth_logout(request)
    return redirect("common:home")
