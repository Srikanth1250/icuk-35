# Use official Tomcat image
FROM tomcat:10.1-jdk17

# Clean default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR into Tomcat
COPY webapp/target/webapp.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat port
EXPOSE 8080
