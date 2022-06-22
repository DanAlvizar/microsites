FROM httpd:2.4
COPY . /usr/local/apache2/htdocs/
LABEL traefik.http.routers.dan.rule="Host(`dan.sub.omnitracs.online`)"
LABEL traefik.http.routers.dan.tls.certresolver="myresolver"
LABEL traefik.http.services.dan.loadbalancer.server.port="80"
