# Use official Tomcat base image with JDK 17
FROM tomcat:10.1-jdk17

# Remove default webapps to avoid conflicts
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR built by Maven into Tomcat as ROOT.war
COPY webapp/target/webapp.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat's default port
EXPOSE 8080

# Start Tomcat using default CMD (inherited from base image)
