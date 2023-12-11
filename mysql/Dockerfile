FROM mysql:8.0-debian

COPY ./mysql/my.cnf /etc/mysql/conf.d/my.cnf
COPY ./mysql/init.d /docker-entrypoint-initdb.d
