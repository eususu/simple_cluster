FROM tomcat:9.0
MAINTAINER lovian@yettiesoft.com

RUN apt-get update && apt-get install -y net-tools # for ifconfig
 
RUN rm -rf  /usr/local/tomcat/webapps/ROOT
RUN mkdir -p  /usr/local/tomcat/webapps/ROOT/WEB-INF

ADD ./webapps/ /usr/local/tomcat/webapps/
ADD ./conf/ /usr/local/tomcat/conf/

ADD war/OSCAR-1.0.2.war /usr/local/tomcat/webapps/

ADD pre.sh /usr/local/tomcat
 
expose 8080
WORKDIR /usr/local/tomcat
 

ENV JAVA_OPTS -Djava.security.egd=file:/dev/./urandom
ENTRYPOINT bash ./pre.sh && catalina.sh run
