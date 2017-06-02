#! /bin/ash

envsubst < /srv/dist/conf.example.json > /srv/dist/conf.json

cat /srv/dist/conf.json

/usr/bin/caddy --conf /etc/Caddyfile --log stdout
