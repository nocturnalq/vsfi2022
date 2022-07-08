FROM registry.vsfi.org/alpine:3

# strongswan install
RUN apk add strongswan strongswan-pki libcharon-extra-plugins libcharon-extauth-plugins libstrongswan-extra-plugins

# Adding keys and config
COPY ./pki /etc/ipsec/pki
COPY ./ipsec.conf /etc/ipsec.conf
COPY ./ipsec.secrets /etc/ipsec.secrets

# Run strongswan vpn server
RUN service strongswan-starter restart


# install ufw
RUN apk ufw
# Allow connections
RUN ufw allow OpenSSH
RUN ufw allow 500,4500/udp

# Add configs
COPY ./sysctl.conf /etc/ufw/sysctl.conf
COPY ./before.rules /etc/ufw/before.rules

# restast firewall
RUN ufw disable
RUN ufw enable

EXPOSE 500 
EXPOSE 4500

