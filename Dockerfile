FROM tomcat:9-jre8-alpine

COPY build/simpleefa.war /usr/local/tomcat/webapps/

EXPOSE 8080

RUN apk update
RUN apk add curl

HEALTHCHECK CMD curl -f localhost:8080 || exit 1
