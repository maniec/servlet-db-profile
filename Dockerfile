FROM tomcat:10-jdk17-openjdk
# tomcat expects .war in a specific location in order to run it
ADD target/app.war /usr/local/tomcat/webapps/app.war
# exposes the port to the docker engine, however not outside docker
EXPOSE 8080
CMD ["catalina.sh", "run"]