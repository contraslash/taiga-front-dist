#! /bin/ash

envsubst < /srv/dist/conf.example.json > /srv/dist/conf.json
envsubst < /etc/Caddyfile.temp > /etc/Caddyfile

cat /srv/dist/conf.json
cat /etc/Caddyfile

/usr/bin/caddy --conf /etc/Caddyfile --log stdout
