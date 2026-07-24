from django.conf.urls import url
from common import views as web

urlpatterns = [
    url(r"^$", web.Home.as_view(), name="home"),
    url(r"^admin-home/$", web.adminHome.as_view(), name="admin-home"),
    # public
    url(r"^about/$", web.AboutPublic.as_view(), name="about"),
    url(r"^qualification/$", web.ProductPublic.as_view(), name="qualification"),
    url(r"^services/$", web.ServicesPublic.as_view(), name="services"),
    url(r"^gallery/$", web.GalleryPublic.as_view(), name="gallery"),
    url(r"^blog/$", web.BlogPublic.as_view(), name="blog"),
    url(
        r"^blog-details/(?P<pk>\d+)/$",
        web.BlogDetailsPublic.as_view(),
        name="blog-details",
    ),
    url(
        r"^terms-conditions/$",
        web.TermsConditionsPublic.as_view(),
        name="terms-conditions",
    ),
    url(r"^contact/$", web.ContactPublic.as_view(), name="contact"),
]