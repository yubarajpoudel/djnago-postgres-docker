FROM python:3.6
ENV PYTHONUNBUFFERED 1
RUN mkdir /delta
WORKDIR /delta
ADD requirements.txt /delta/
RUN pip install -r requirements.txt
ADD . /delta/
CMD [ "python3 ./delta/manage.py runserver 0.0.0.0:8009" ]
