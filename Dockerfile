# Use Tomcat 10.1 with JDK 17 as the base image
FROM tomcat:10.1-jdk17

# Set the working directory to Tomcat's webapps directory
WORKDIR /usr/local/tomcat/webapps/
COPY target/webapp.war /usr/local/tomcat/webapps/
EXPOSE 8080

# Copy the WAR file into the webapps directory
COPY target/webapp.war /usr/local/tomcat/webapps/

# Expose port 8080
EXPOSE 8080

# Run Tomcat
CMD ["catalina.sh", "run"]
