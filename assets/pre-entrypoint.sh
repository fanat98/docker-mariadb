#!/bin/bash

#
# user id / group id
#
 
USERID=${USERID:-999}
USER=${USER:-mysql}
GROUPID=${GROUPID:-999}
GROUP=${GROUP:-mysql}
 
usermod -l ${USER} mysql
usermod -u ${USERID} -o ${USER}
groupmod -n ${GROUP} mysql
groupmod -g ${GROUPID} -o ${GROUP}

rm -rf /var/log/mysql
mkdir -p /var/log/mysql
chown -R ${USER} /var/log/mysql

chown -R ${USER} /var/run/mysqld
chown -R ${USER}:${GROUP} /var/lib/mysql

sed -i "s/^user\ +=.*/user\ =\ ${USER}/" /etc/mysql/my.cnf


