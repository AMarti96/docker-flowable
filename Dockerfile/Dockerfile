FROM tomcat
MAINTAINER adria.marti@aaaida.com

ADD /lib /usr/local/tomcat/webapps

ADD /driver /usr/local/tomcat/lib

RUN mkdir /docker-entrypoint-initdb.d

COPY docker-entrypoint.sh /usr/local/

RUN chmod +x /usr/local/docker-entrypoint.sh

RUN ln -s usr/local/docker-entrypoint.sh /entrypoint.sh

EXPOSE 8080

ENTRYPOINT ["/usr/local/docker-entrypoint.sh"]

