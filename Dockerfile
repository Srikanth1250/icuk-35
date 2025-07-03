# Use official Tomcat base image with JDK 17
FROM tomcat:10.1-jdk17

# Set working directory to Tomcat's webapps folder
WORKDIR /usr/local/tomcat/webapps/

# Copy the WAR file into Tomcat's webapps directory
COPY webapp/target/webapp.war ./webapp.war

# Expose port 8080 for web traffic
EXPOSE 8080

# Tomcat will automatically deploy webapp.war
# No need to specify CMD or ENTRYPOINT as Tomcat is the default
