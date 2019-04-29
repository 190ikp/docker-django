# A simple Django server for PWA development

example:
```shell
docker run -d -p '8000:8000' -v ./src:/usr/local/src 190ikp/django-dev python manage.py runserver 0.0.0.0:8000
```
mount your project files to `/usr/local/src` by `--volumes` option.