# Use Tomcat 10.1 with JDK 17 as the base image
FROM tomcat:10.1-jdk17

# Set the working directory inside the container
WORKDIR /usr/local/tomcat/webapps/

# Copy the WAR file built from the webapp module
COPY webapp/target/webapp.war ./webapp.war

# Expose port 8080 for web access
EXPOSE 8080

# Run Tomcat
CMD ["catalina.sh", "run"]
