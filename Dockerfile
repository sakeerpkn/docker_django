FROM sakeer/ubuntu:version-3
FROM sakeer/mysql_connection_django:latest
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list


ENV PYTHONUNBUFFERED 1
RUN mkdir /docker_django
WORKDIR /docker_django
ADD requirements.txt /docker_django/
RUN pip install -r requirements.txt
ADD . /docker_django/
