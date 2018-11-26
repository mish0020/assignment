# assignment 10  Docker project
FROM ubuntu:xenial
LABEL maintainer="mish0020@stthomas.edu"
EXPOSE 8080
RUN apt-get update -y
RUN apt-get install -y build-essential
RUN apt-get install -y python-pip
RUN apt-get install -y python-dev
#
RUN mkdir /app
COPY app/requirements.txt /app
COPY app/site.py /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python","app/site.py"]
RUN python app/site.py
