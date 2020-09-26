FROM tomcat:9.0
MAINTAINER lovian@yettiesoft.com


ARG conf
ARG defaultWebApps
ARG servername
ENV JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -Dsusu.servername=$servername

ADD $conf /usr/local/tomcat/conf
RUN cp -r /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps/
ADD $defaultWebApps /usr/local/tomcat/webapps

EXPOSE 8080
WORKDIR /usr/local/tomcat/bin
ENTRYPOINT ["catalina.sh", "run"]
