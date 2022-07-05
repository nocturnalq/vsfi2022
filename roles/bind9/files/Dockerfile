FROM alpine

RUN apk --update --no-cache add bind bind-dnssec-tools

RUN mkdir /etc/bind/zones \
chown -R root:named /etc/bind/ && chmod -R 755 /etc/bind \
mkdir -p /var/cache/bind && chown named:named /var/cache/bind && chmod 755 /var/cache/bind \
mkdir -p /var/lib/bind && chown named:named /var/lib/bind && chmod 755 /var/lib/bind \
mkdir -p /var/log/bind && chown named:named /var/log/bind && chmod 755 /var/log/bind \
mkdir -p /run/named && chown named:named /run/named && chmod 755 /run/named

COPY ./named.conf /etc/bind/named.conf
COPY ./named.conf.options /etc/bind/named.conf.options
COPY ./named.conf.local /etc/bind/named.conf.local
COPY ./config/zones /etc/bind/zones

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]

EXPOSE 53
