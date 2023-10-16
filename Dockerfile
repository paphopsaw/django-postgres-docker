FROM python:3.11

RUN apt update -qq && apt install -y nodejs

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /mysite

COPY requirements.txt /mysite/

RUN pip install --upgrade pip && pip install -r requirements.txt

EXPOSE 3000