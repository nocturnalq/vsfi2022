FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf
RUN mkdir /etc/nginx/sites-available/
RUN mkdir /etc/nginx/sites-enabled/

COPY ./websites/web.patchka.vsfi /etc/nginx/sites-available/
COPY ./websites/wiki.patchka.vsfi /etc/nginx/sites-available/

RUN ln -s /etc/nginx/sites-available/web.patchka.vsfi /etc/nginx/sites-enabled/
RUN ln -s /etc/nginx/sites-available/wiki.patchka.vsfi /etc/nginx/sites-enabled/

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]