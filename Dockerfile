FROM alpine

RUN apk update

RUN apk add python3 py-pip

RUN pip install FLASK

COPY app.py /opt/app.py

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
