# Use Tomcat base image with JDK 17
FROM tomcat:10.1-jdk17

# Set working directory inside the container to Tomcat webapps folder
WORKDIR /usr/local/tomcat/webapps/

# Copy the WAR file from your local build context into the Tomcat webapps directory
COPY webapp/target/webapp.war ./webapp.war

# Expose port 8080 for web access
EXPOSE 8080

# Default command (Tomcat starts automatically)
