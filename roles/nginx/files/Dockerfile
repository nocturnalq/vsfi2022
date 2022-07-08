FROM nginx:alpine

COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./includes/ /etc/nginx/includes/
COPY ./.htpasswd /etc/nginx/.htpasswd

RUN rm -rf /usr/share/nginx/html*

COPY ./html /usr/share/nginx/html

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]