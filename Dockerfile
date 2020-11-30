FROM tomcat:9.0
MAINTAINER lovian@yettiesoft.com


ARG conf
ARG defaultWebApps
ARG servername
ARG lib
ENV JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -Dsusu.servername=$servername

ADD $conf /usr/local/tomcat/conf
RUN mkdir -p /tmp/log
RUN rm -rf /usr/loca/tomcat/webapps/
RUN cp -r /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps/
ADD $defaultWebApps /usr/local/tomcat/webapps
ADD $lib /usr/local/tomcat/lib

EXPOSE 8080 4567
WORKDIR /usr/local/tomcat/bin
ENTRYPOINT ["catalina.sh", "run"]
