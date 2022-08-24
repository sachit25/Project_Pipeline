FROM python:3.8-slim-buster

ENV PYTHONBUFFERED 1


WORKDIR /app

COPY ./requirements.txt requirements.txt 

RUN pip install -r requirements.txt


COPY . .

# ADD ./app
# ADD target/spring-boot-rest-docker-example-0.0.1-SNAPSHOT.jar app.jar
ADD  target/docker-jenkins-integration-sample.jar docker-jenkins-integration-sample.jar



ENTRYPOINT [ "java","-jar","/docker-jenkins-integration-sample.jar" ]

# CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000"]