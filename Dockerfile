# Use official Tomcat base image with JDK 17
FROM tomcat:10.1-jdk17

# Set working directory to Tomcat webapps folder
WORKDIR /usr/local/tomcat/webapps/

# Copy WAR as ROOT.war so it runs at http://localhost:8080/
COPY webapp/target/webapp.war ./ROOT.war

# Expose default Tomcat port
EXPOSE 8080

