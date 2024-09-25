FROM        nginx
RUN         rm -rf /usr/share/nginx/html/*
COPY        ./ /usr/share/nginx/html/
COPY        nginx-roboshop.conf /etc/nginx/conf.d/default.conf
COPY        nginx-main.conf   /etc/nginx/nginx.conf


