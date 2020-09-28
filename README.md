h1. simple clustering environment with nginx, tomcat

Requirements
 - docker
 - docker-compose


Web Service port = 8200
WAS1(tomcatmanager) Service port = 8201
WAS2(tomcatworker) Service port = 8202

Launch
 - $> ./start.sh

Stop
 - CTRL + C in the console

Deploy
 - http://ip:8201/manager
login with admin/12qw12qw

Access HTTP
 - http://127.0.0.1:8200
