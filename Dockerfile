FROM tomcat:9-jre8-alpine

COPY build/simpleefa.war /usr/local/tomcat/webapps/
