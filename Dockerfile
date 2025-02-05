# Use a stable Tomcat image from Docker Hub
FROM tomcat:9.0-jdk11

# Set working directory
WORKDIR /usr/local/tomcat/webapps/

# Copy the built WAR file to Tomcat’s webapps directory
COPY target/maven-web-app.war ROOT.war

# Expose port 8080 (Tomcat’s default port)
EXPOSE 8080

# Start Tomcat when the container runs
CMD ["catalina.sh", "run"]
