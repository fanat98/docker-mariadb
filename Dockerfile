FROM mariadb:lts
MAINTAINER Aslam Idrisov <aslam@malsa.ch>

COPY assets/pre-entrypoint.sh /pre-entrypoint.sh
COPY assets/bin/* /usr/local/bin/

RUN cat /pre-entrypoint.sh /docker-entrypoint.sh > /temp-entrypoint.sh ; rm /docker-entrypoint.sh ; mv /temp-entrypoint.sh /docker-entrypoint.sh ; chmod +x /docker-entrypoint.sh
