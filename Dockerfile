FROM python:3.8.9-alpine3.13

ENV FLASK_HOME=/app

RUN mkdir -p $FLASK_HOME

WORKDIR $FLASK_HOME

COPY . $FLASK_HOME

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip

RUN pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["./docker-entrypoint.sh"]