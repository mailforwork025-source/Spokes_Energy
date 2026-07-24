#!/usr/bin/env python
import os
import sys

if __name__ == "__main__":
    os.environ.setdefault("DJANGO_SETTINGS_MODULE", "Project.settings")
    try:
        from django.core.management import execute_from_command_line
    except ImportError:
        # The above import may fail for some other reason. Ensure that the
        # issue is really that Django is missing to avoid masking other
        # exceptions on Python 2.
        try:
            import django
        except ImportError:
            raise ImportError(
                "Couldn't import Django. Are you sure it's installed and "
                "available on your PYTHONPATH environment variable? Did you "
                "forget to activate a virtual environment?"
            )
        raise
    argv_copy = sys.argv.copy()
    if sys.argv[1] == "makemigrations":
        print("This project has migrations included already. If you are a backend dev, use MAKEMIGRATIONS", file=sys.stderr)
        sys.exit(1)
    if argv_copy[1] == "MAKEMIGRATIONS":
        argv_copy[1] = argv_copy[1].lower()
    execute_from_command_line(argv_copy)
