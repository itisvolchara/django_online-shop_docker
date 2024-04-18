FROM python:latest

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip
COPY ../django_online-shop/requirements.txt /usr/src/app/requirements.txt
RUN pip install -r requirements.txt



# copy project
COPY ../django_online-shop /usr/src/app/

COPY ./docker/entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

#CMD entrypoint.sh

#CMD ["python", "manage.py", "migrate"]

#RUN python manage.py migrate

EXPOSE 8000
#CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]