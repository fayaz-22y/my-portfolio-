FROM tomcat:9
RUN  apt update && apt install openjdk-11-jdk -y
COPY /portfolio/ .
RUN  apt install -y maven && mvn clean package
COPY /portfolio/target/portfolio.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
