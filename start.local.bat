# django-admin compilemessages 
## if local config file does not exist, clond one:
test -f settings/local.py || echo "=== warning: local.py does not exist, will initialize the file, please update the configs ==="
test -f settings/local.py || cp settings/production.py settings/local.py
test -f settings/local.py && sed -i '' 's/DEBUG = False/DEBUG = True/g' settings/local.py 2> /dev/null

# synchronous web server for development:
# --settings=settings.local
#python3 manage.py runserver 0.0.0.0:8000 $server_params #


python3 manage.py runserver 0.0.0.0:8000 --settings=settings.local

#Get-ChildItem env:  window下查看所有环境变量
# for sync web server  
# linux=export | window=set  
# export DJANGO_SETTINGS_MODULE=settings.local  
# gunicorn =w 3 - b 127.0.0.1:8000 recruitment.wsgi:application


# for async web server:
# set DJANGO_SETTINGS_MODULE=settings.local
# uvicorn recruitment.asgi:application --workers 3 Dockerfile
# uvicorn recruitment.asgi:application --workers 3 
