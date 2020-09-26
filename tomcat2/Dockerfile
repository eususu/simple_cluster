FROM tomcat:9.0
MAINTAINER lovian@yettiesoft.com


ARG conf
ARG warPath
ENV JAVA_OPTS -Djava.security.egd=file:/dev/./urandom

ADD $conf /usr/local/tomcat/conf
ADD $warPath /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
WORKDIR /usr/local/tomcat/bin
ENTRYPOINT ["catalina.sh", "run"]
