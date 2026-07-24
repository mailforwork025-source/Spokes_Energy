from django.conf.urls import include, url
from administrator import views

urlpatterns = [
    url(r"^landing-page/$", views.LandingPage.as_view(), name="landing-page"),
    url(
        r"^edit-blog/(?P<pk>\d+)/$",
        views.EditBlog.as_view(),
        name="edit-blog",
    ),
    url(r"^delete-blog/(?P<pk>\d+)/$", views.DeleteBlog.as_view(), name="delete-blog"),
    url(r"^list-gallery/$", views.ListGallery.as_view(), name="list-gallery"),
    url(
        r"^edit-gallery/(?P<pk>\d+)/$",
        views.EditGallery.as_view(),
        name="edit-gallery",
    ),
    url(
        r"^delete-gallery/(?P<pk>\d+)/$",
        views.DeleteGallery.as_view(),
        name="delete-gallery",
    ),
    url(r"^list-contact-us/$", views.ListContactUs.as_view(), name="list-contact-us"),
    url(r"^list-patners/$", views.ListPatners.as_view(), name="list-patners"),
    url(
        r"^edit-patners/(?P<pk>\d+)/$",
        views.EditPatners.as_view(),
        name="edit-patners",
    ),
    url(
        r"^delete-patners/(?P<pk>\d+)/$",
        views.DeletePatners.as_view(),
        name="delete-patners",
    ),
    url(r"^list-products/$", views.ListProducts.as_view(), name="list-products"),
    url(
        r"^edit-products/(?P<pk>\d+)/$",
        views.EditProducts.as_view(),
        name="edit-products",
    ),
    url(
        r"^delete-products/(?P<pk>\d+)/$",
        views.DeleteProducts.as_view(),
        name="delete-products",
    ),
    url(r"^list-service/$", views.ListService.as_view(), name="list-service"),
    url(
        r"^edit-service/(?P<pk>\d+)/$",
        views.EditService.as_view(),
        name="edit-service",
    ),
    url(
        r"^delete-service/(?P<pk>\d+)/$",
        views.DeleteService.as_view(),
        name="delete-service",
    ),
    url(
        r"^list-testimonial/$", views.ListTestimonial.as_view(), name="list-testimonial"
    ),
    url(
        r"^edit-testimonial/(?P<pk>\d+)/$",
        views.EditTestimonial.as_view(),
        name="edit-testimonial",
    ),
    url(
        r"^delete-testimonial/(?P<pk>\d+)/$",
        views.DeleteTestimonial.as_view(),
        name="delete-testimonial",
    ),
]
