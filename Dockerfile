FROM mariadb:10.0
MAINTAINER Jonas Renggli <jonas.renggli@swisscom.com>

# set default encoding to utf8
RUN sed -i 's/^#default-character-set/default-character-set/' /etc/mysql/conf.d/mariadb.cnf && \
	sed -i 's/^#character-set-server/character-set-server/' /etc/mysql/conf.d/mariadb.cnf && \
	sed -i 's/^#collation-server/collation-server/' /etc/mysql/conf.d/mariadb.cnf && \
	sed -i 's/^#character_set_server/character_set_server/' /etc/mysql/conf.d/mariadb.cnf && \
	sed -i 's/^#collation_server/collation_server/' /etc/mysql/conf.d/mariadb.cnf

