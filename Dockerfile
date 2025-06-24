# Use an official Tomcat image with JDK
FROM tomcat:9.0-jdk17

# Remove default web apps (optional but cleaner)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat's webapps directory
COPY webapp.war /usr/local/tomcat/webapps/ROOT.war

# Expose port (default Tomcat port)
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

