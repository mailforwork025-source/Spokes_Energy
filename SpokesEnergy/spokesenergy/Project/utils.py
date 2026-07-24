from datetime import date, datetime, time
import pytz
from django.conf import settings
import requests
from io import BytesIO
from django.http import HttpResponse
from django.template.loader import get_template
from xhtml2pdf import pisa


def render_to_pdf(template_src, context_dict={}):
    template = get_template(template_src)
    html = template.render(context_dict)
    result = BytesIO()
    pdf = pisa.pisaDocument(BytesIO(html.encode("ISO-8859-1")), result)
    if not pdf.err:
        return HttpResponse(result.getvalue(), content_type="application/pdf")
    return None


def check_recaptcha(recaptcha_token):
    r = requests.post(
        url="https://www.google.com/recaptcha/api/siteverify",
        data={"secret": settings.RECAPTCHA_SECRET_KEY, "response": recaptcha_token},
    )
    if r.status_code != requests.codes.ok:
        raise Exception("Recaptcha failed")
    c_data = r.json()
    if not c_data["success"]:
        raise Exception("Recaptcha failed")


def get_error(form):
    errors = dict(form.errors)
    key = tuple(errors.keys())[0]
    error = errors[key]

    if isinstance(error, (tuple, list)):
        field = key
        error = error[0]
    else:
        tkey = tuple(error.keys())[0]
        error = error[tkey][0]
        field = tkey

    field = field.replace("__all__", "").replace("non_field_errors", "")
    if field:
        message = field.replace("_", " ").title() + " : " + error
    else:
        message = error
    return message


def utc_now():
    tnow = datetime.now(pytz.utc)
    if not settings.USE_TZ:
        return tnow.replace(tzinfo=None)
    return tnow
