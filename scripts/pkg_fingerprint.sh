#!/bin/sh

if [ ! -z "${PKG_PUBKEY}"  ]; then
	echo "function: \"sha256\""
	echo "fingerprint: \"$(sha256 -q ${PKG_PUBKEY})\""
fi
