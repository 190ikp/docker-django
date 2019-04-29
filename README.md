# A simple Django server

example:
```shell
docker run -d -p '8000:8000' -v ./src:/usr/src/app 190ikp/django-dev python manage.py runserver 0.0.0.0:8000
```
mount your project files to `/usr/src/app` by `--volumes` option.