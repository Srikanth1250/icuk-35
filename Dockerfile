# Use official Tomcat image with JDK 17
FROM tomcat:10.1-jdk17

# Clean default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file into Tomcat
COPY webapp/target/webapp.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat's port
EXPOSE 8080
