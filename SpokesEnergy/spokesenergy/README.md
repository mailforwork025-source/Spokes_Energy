# Django Starter Project

This is a scaffold that can be used for any new django project.

CheckList for all the projects:

1. Proper Documentation
    Proper Documentation is necessary for all the projects as it can be used for future references.
2. Reusable Apps
    Most of the projects may have similar apps such as similar user logins. All such apps can be created here for code reusability.
3. Unit Test
    Unit tests should be done for even simple function eventhough detailed tests are done after developing a project.

# major version 

version:
django = Use [recent LTS version till its extended support ends](https://www.djangoproject.com/download) (3.2 till April 2024, then use 4.2 etc)
python = 3.10.12

# PROJECT SETUP

All you need is create a project with "eg: django-admin startproject PROJECTNAME" .Then add local_settings for keep your data safe from public acess.Add gitgnore and requirements.txt. Add basic setup in settings.py. Then need to create user app with "eg: django-admin startapp APPNAME".Then add APPNAME to your settings.py "INSTALLED_APPS section.Then do your first migration with abstract user model "eg: python manage.py makemigrations user" then migrate with "eg: python manage.py migrate".Add templates and static folder.

```
[DJANGO-STARTER-PROJECT]/
├── [Project]/
│   ├── __init__.py
│   ├── settings.py
│   ├── urls.py
│   └── wsgi.py
│   └── api_urls.py
│   └── custom_exception_handler.py
│   └── custom_serializer.py
│   └── web_urls.py
│   └── utils.py
│── [common]/
|   ├── __init__.py
│   ├── admin.py
|   ├── apps.py
|   ├── models.py
|   ├── views.py
|   ├── web_urls.py
|   ├── web.py.py
│── [staic]/
│── [templates]/
│── [user]/
|   ├── __init__.py
│   ├── admin.py
|   ├── apps.py
|   ├── models.py
|   ├── views.py
│   ├── api.py
│   ├── api_urls.py
|   ├── web_urls.py
|   ├── web.py.py
│   ├── api_permissions.py
│   ├── web_permissions.py
│   ├── auth_backend.py
└── .gitgnore
└── manage.py
└── README.md.py
└── requirements.txt.py
```

.gitgnore
1. include or exclude files from git

requirements.txt
1. For project packages

user app creation
1. FOR LOGIN LOGOUT CHANGE PASSWORD 
2. UserProfile as abstract user
3. Token model for user token 
4. api and web permission for authentication and permission class

common app creation
1. For redirect to dashboard if login or redirect to login page
2. section for website part

Project utils 
1. Reusable function kept here

Project Custom exception and serializer 
1. For customised Serializers

templates
1. Add templates here

static
1. add static files and plugins (Frontend Part)





