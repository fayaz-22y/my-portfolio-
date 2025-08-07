
# ---------- STAGE 1: BUILD ----------
FROM maven:3.9.4-eclipse-temurin-17 AS builder

WORKDIR /app

# Copy your project source code into the container
COPY /portfolio /app

# Build the WAR file using Maven
RUN mvn clean package

# ---------- STAGE 2: RUNTIME ----------
FROM tomcat:9-jdk17-temurin

# Remove default Tomcat applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the built WAR file from builder stage
COPY /portfolio/target/portfolio.war /usr/local/tomcat/webapps/portfolio.war

EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

