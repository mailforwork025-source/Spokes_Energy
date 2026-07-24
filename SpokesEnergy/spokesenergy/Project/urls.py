from django.contrib import admin
from django.conf.urls import include, url
from django.conf import settings
from django.views.static import serve

urlpatterns = [
    url(r"^admin/", admin.site.urls),
    url(r"^user/", include(("user.urls", "user"), namespace="user")),
    url(r"^", include(("common.urls", "common"), namespace="common")),
    url(
        r"^administrator/",
        include(("administrator.urls", "administrator"), namespace="administrator"),
    ),
]

if settings.DEBUG:
    urlpatterns += [
        url(
            r"^media/(?P<path>.*)$",
            serve,
            {
                "document_root": settings.MEDIA_ROOT,
            },
        ),
    ]
