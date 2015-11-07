#!/bin/sh

read -t 2 SUM
[ -z "${SUM}" ] && exit 1
echo SIGNATURE
echo -n ${SUM} | openssl dgst -sign ${PKG_PRIVKEY} -sha256 -binary
echo
echo CERT
cat ${PKG_PUBKEY}
echo END
