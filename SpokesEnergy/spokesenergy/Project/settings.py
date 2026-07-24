import os
from django.core.management.utils import get_random_secret_key
import logging

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

try:
    from Project import local_settings
except ImportError:
    logging.critical("local_settings.py not found! Using bare defaults...")
    bare_settings = {
        "debug": False,
        "secret_key": get_random_secret_key(),
        "allowed_hosts": ["127.0.0.1"],
        "databases": {
            "default": {
                "ENGINE": "django.db.backends.mysql",
                "NAME": "randomdb",
                "USER": "root",
                "PASSWORD": "randompass",
                "HOST": "mysql",
                "PORT": "3306",
                "OPTIONS": {"init_command": "SET sql_mode='STRICT_TRANS_TABLES'"},
            },
            "sqlite": {
                "ENGINE": "django.db.backends.sqlite3",
                "NAME": os.path.join(BASE_DIR, "db.sqlite3"),
            },
        },
    }
    local_settings = type(
        "NoneSettings",
        (object,),
        {
            "__getattr__": lambda *args, **kwargs: None
            if args[1] not in bare_settings
            else bare_settings[args[1]]
        },
    )()


SECRET_KEY = "bhzryu2@($^+uj786s%*!uq!y7s6#x!_%3d#qv2$*kuwylypok"

DEBUG = local_settings.debug

ALLOWED_HOSTS = local_settings.allowed_hosts

INSTALLED_APPS = [
    "django.contrib.admin",
    "django.contrib.auth",
    "django.contrib.contenttypes",
    "django.contrib.sessions",
    "django.contrib.messages",
    "django.contrib.staticfiles",
    "user",
    "common",
    "administrator",
]

MIDDLEWARE = [
    "django.middleware.security.SecurityMiddleware",
    "django.contrib.sessions.middleware.SessionMiddleware",
    "django.middleware.common.CommonMiddleware",
    "django.middleware.csrf.CsrfViewMiddleware",
    "django.contrib.auth.middleware.AuthenticationMiddleware",
    "django.contrib.messages.middleware.MessageMiddleware",
    "django.middleware.clickjacking.XFrameOptionsMiddleware",
]

ROOT_URLCONF = "Project.urls"
AUTH_USER_MODEL = "user.UserProfile"

TEMPLATES = [
    {
        "BACKEND": "django.template.backends.django.DjangoTemplates",
        "DIRS": [os.path.join(BASE_DIR, "templates")],
        "APP_DIRS": True,
        "OPTIONS": {
            "context_processors": [
                "django.template.context_processors.debug",
                "django.template.context_processors.request",
                "django.contrib.auth.context_processors.auth",
                "django.contrib.messages.context_processors.messages",
            ],
            "libraries": {
                "custom_tags": "common.templatetags.myfilters",
            },
        },
    },
]

WSGI_APPLICATION = "Project.wsgi.application"


DATABASES = local_settings.databases


AUTH_PASSWORD_VALIDATORS = [
    {
        "NAME": "django.contrib.auth.password_validation.UserAttributeSimilarityValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.MinimumLengthValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.CommonPasswordValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.NumericPasswordValidator",
    },
]

LANGUAGE_CODE = "en-us"

TIME_ZONE = "UTC"

USE_I18N = True

USE_L10N = True

USE_TZ = True

LOGIN_URL = "/"
STATICFILES_DIRS = [
    os.path.join(BASE_DIR, "static"),
]
DATA_UPLOAD_MAX_MEMORY_SIZE = 8242880
STATIC_URL = "/static/"
MEDIA_URL = "/media/"
STATIC_ROOT = local_settings.static_root
MEDIA_ROOT = local_settings.media_root
LOGGING = {
    "version": 1,
    "disable_existing_loggers": False,
    "handlers": {
        "console": {
            "class": "logging.StreamHandler",
        },
    },
    "loggers": {
        "django": {
            "handlers": ["console"],
            "level": "INFO",
        },
    },
}
if hasattr(local_settings, "logging"):
    LOGGING = local_settings.logging

DEFAULT_AUTO_FIELD = "django.db.models.BigAutoField"

FILE_UPLOAD_PERMISSIONS = 0o2755
FILE_UPLOAD_DIRECTORY_PERMISSIONS = 0o2755
SILENCED_SYSTEM_CHECKS = ["security.W004", "security.W008"]
SESSION_COOKIE_SECURE = True
CSRF_COOKIE_SECURE = True
DISABLE_INTERNAL_REQUEST_CALL_API = True
RECAPTCHA_SITE_KEY = local_settings.recaptcha_site_key
RECAPTCHA_SECRET_KEY = local_settings.recaptcha_secret_key
