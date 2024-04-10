#!/bin/sh

if [ "$(id -u)" -ne 0 ]; then
        echo 'This script must be run by root' >&2
        exit 1
fi

# Install

apt install -y gcc git make

git clone https://github.com/rvaiya/keyd
cd keyd
make && make install

cat > /etc/keyd/default.conf << EOL
[ids]

*

[main]
leftmeta = C-tab
EOL

systemctl enable keyd && systemctl start keyd
