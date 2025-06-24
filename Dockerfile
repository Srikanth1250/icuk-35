FROM tomcat:9.0-jdk17

# Clean existing apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR
COPY target/webapp.war /usr/local/tomcat/webapps/ROOT.war


EXPOSE 8080
CMD ["catalina.sh", "run"]
