FROM nginx:alpine

COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./includes/ /etc/nginx/includes/

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]