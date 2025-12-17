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

#WORKDIR /usr/src/app
#RUN echo "deb http://ftp.us.debian.org/debian/ unstable main contrib non-free" | tee -a /etc/apt/sources.list
#RUN echo "deb-src http://ftp.us.debian.org/debian/ unstable main contrib non-free" | tee -a /etc/apt/sources.list

COPY createEvent.sql /docker-entrypoint-initdb.d/

#RUN chmod +x createDatabase.sh
#RUN ./createDatabase.sh
#COPY mysql /var/lib/mysql



#ENTRYPOINT service mysql restart && bash 

#CMD ["--log-level=4","--log-target=stderr","-v"]
