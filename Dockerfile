FROM python:3.7-alpine

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFERED 1

WORKDIR code/

COPY Pipfile Pipfile.lock /code/

RUN pip install pipenv && pipenv install --system

COPY . code/
