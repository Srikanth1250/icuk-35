# Use official Tomcat image with JDK 17
FROM tomcat:10.1-jdk17

# Clean default Tomcat webapps to avoid conflicts
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file into the container as ROOT.war
COPY webapp/target/webapp.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat (inherited from base image)
