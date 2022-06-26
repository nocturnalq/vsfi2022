FROM alpine

RUN apk --update --no-cache add bind bind-dnssec-tools

RUN mkdir /etc/bind/zones
RUN chown -R root:named /etc/bind/ && chmod -R 755 /etc/bind
RUN mkdir -p /var/cache/bind && chown named:named /var/cache/bind && chmod 755 /var/cache/bind
RUN mkdir -p /var/lib/bind && chown named:named /var/lib/bind && chmod 755 /var/lib/bind
RUN mkdir -p /var/log/bind && chown named:named /var/log/bind && chmod 755 /var/log/bind
RUN mkdir -p /run/named && chown named:named /run/named && chmod 755 /run/named

COPY ./config/named.conf /etc/bind/named.conf
COPY ./config/named.conf.options /etc/bind/named.conf.options
COPY ./config/named.conf.local /etc/bind/named.conf.local
COPY ./config/zones /etc/bind/zones

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]

EXPOSE 53
