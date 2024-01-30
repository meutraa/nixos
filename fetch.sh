#!/usr/bin/env sh

if test -d /tmp/nixos; then
	rm -rf /tmp/nixos
fi
mkdir /tmp/nixos
cd /tmp/nixos
curl -s -o config.tar.xz.gpg https://raw.githubusercontent.com/meutraa/nixos/main/config.tar.xz.gpg
gpg --quiet -a -o config.tar.xz --decrypt config.tar.xz.gpg
tar -xf config.tar.xz
cd etc/nixos
ls -lah
