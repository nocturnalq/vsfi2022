FROM nginx:1.23.0-alpine

RUN rm -r /etc/nginx/conf.d/ \
rm /etc/nginx/nginx.conf

COPY ./nginx.conf /etc/nginx/
COPY ./conf.d/ /etc/nginx/
COPY ./.htpasswd /etc/nginx/