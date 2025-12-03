# Mysql
#
# docker run -d \
#	-v /etc/localtime:/etc/localtime:ro \
#   -v /home/infamous/mysql:/var/lib/mysql \
#	--name mysql \
#	-p 3306 \
#   --net=shadow-net \
#   --env="MYSQL_ROOT_PASSWORD=mypassword" \
#	mysql/docker
# docker run -itd --env=MYSQL_ROOT_PASSWORD=mypassword --volume=/var/lib/mysql  -p 3306:3306 mysql-app

FROM mysql

LABEL maintainer="Jorrell Smith <sabatiel180@gmail.com>"


COPY createEvent.sql /docker-entrypoint-initdb.d/
