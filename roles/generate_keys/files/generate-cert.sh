#!/bin/bash

pki --gen --type rsa --size 4096 --outform pem > /etc/ipsec.d/private/$1-key.pem;

pki --pub --in /etc/ipsec.d/private/$1-key.pem --type rsa \
    | pki --issue --lifetime 1825 \
        --cacert /etc/ipsec.d/cacerts/ca-cert.pem \
        --cakey /etc/ipsec.d/private/ca-key.pem \
        --dn "CN=$1.patchka.vsfi" --san $1.patchka.vsfi \
        --flag serverAuth --flag ikeIntermediate --outform pem \
    >  /etc/ipsec.d/certs/$1-cert.pem