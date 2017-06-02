FROM  abiosoft/caddy

RUN apk update

RUN apk add --no-cache gettext

ADD . /srv/

ADD dist/conf.example.json /srv/dist
ADD Caddyfile /etc/Caddyfile


ADD ./entrypoint.sh /




#RUN /bin/ash -c "envsubst < /srv/dist/conf.json > /srv/dist/conf.json"

ENTRYPOINT ["/entrypoint.sh"]
#CMD ["--conf", "/etc/Caddyfile", "--log", "stdout"]
#FROM nginx:alpine

#ADD dist /usr/share/nginx/html


#COPY nginx.conf /etc/nginx
##RUN /bin/ash -c "envsubst < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf"

#RUN ls /usr/share/nginx/html
#RUN cat /usr/share/nginx/html/conf.json