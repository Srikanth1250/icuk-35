FROM tomcat:10.1-jdk17

WORKDIR /usr/local/tomcat/webapps/

COPY webapp/target/webapp.war ./webapp.war

EXPOSE 8080
