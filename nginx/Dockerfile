FROM debian:bullseye 

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install nginx -y && \
    apt-get install openssl -y

RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
    -out /etc/ssl/certs/pongworld.crt \
    -keyout /etc/ssl/private/pongworld.key \
    -subj "/C=KR/ST=Seoul/L=Seoul/O=42Seoul/OU=ft_transcendence/CN=pongworld/"

COPY ./tools/init_front.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/init_front.sh
    
COPY  ./conf/default /etc/nginx/sites-available/

EXPOSE 443

ENTRYPOINT ["init_front.sh"]