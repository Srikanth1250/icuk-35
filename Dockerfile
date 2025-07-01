# Use Tomcat 10.1 with JDK 17 as the base image
FROM tomcat:10.1-jdk17

# Set the working directory
WORKDIR /usr/local/tomcat/webapps/

# Copy the WAR file into the Tomcat webapps directory
COPY webapp/target/webapp.war ./webapp.war

# Expose port 8080
EXPOSE 8080

# Run Tomcat
CMD ["catalina.sh", "run"]

