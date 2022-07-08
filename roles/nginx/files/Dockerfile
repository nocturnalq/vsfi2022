FROM nginx:alpine

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./conf.d /etc/nginx/

EXPOSE 80

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]