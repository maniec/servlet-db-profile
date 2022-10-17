FROM tomcat:10-jdk17-openjdk
ADD target/web-app.war /usr/local/tomcat/webapps/web-app.war
EXPOSE 8080
CMD ["catalina.sh", "run"]