

# ---------- STAGE 1: BUILD ----------
FROM maven:3.9.4-eclipse-temurin-17 AS builder

WORKDIR /app
COPY /portfolio /app
# Copy your project source code into the container
RUN mvn clean package 

# ---------- STAGE 2: RUNTIME ----------
FROM tomcat:9-jdk17-temurin

# Remove default Tomcat applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the built WAR file from builder stage
COPY --from=builder /app/target/*.war  /usr/local/tomcat/webapps/portfolio.war

EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

