# Use official Tomcat 10 image with OpenJDK 17
FROM tomcat:10.1-jdk17-temurin

# Maintainer info
LABEL maintainer="info@wiculty.com"

# Remove default ROOT app to deploy your WAR at root context
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR as ROOT.war
COPY target/saikart.war /usr/local/tomcat/webapps

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat in foreground (required for Docker)
CMD ["catalina.sh", "run"]
