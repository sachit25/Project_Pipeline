FROM nginx:latest
WORKDIR /etc/nginx/sites-available

COPY default .
RUN service nginx restart
EXPOSE 80
