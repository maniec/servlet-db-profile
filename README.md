# Web App

Simple old-fashion .war Web Application form to demo "Dockerization"

### Pre Requisites
- JDK, Git, Maven, Docker, IDE

### Project Creation
- IntelliJ > New Project > Java, Maven, etc

### Dependencies
- servlet, hibernate, mysql

### Project Share
- git init
- git add .
- git commit -m "initial commit"
- git remote add origin https://github.com/maniec/[repo-name.git]
- git branch -M main
- git push -u origin main

### Build
- <artifactId>maven-war-plugin</artifactId>
- mvn clean install
- check /target/*.war

# Manual Process

### Database
- docker pull mysql:8
- docker run -d --name app-db -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=appDB mysql:8

### Dockerfile
- mvn clean install
- ADD artifact to correct location
- EXPORT port

### Build App Image based on the Dockerfile
- docker build -t app-img:1.0 .

### Build App Container based on Image
- bind a host port to the exposed container port
- docker run -d -p 8080:8080 --name app app-img:1.0

### Bridge Networking binding
- docker network create app-network
- docker network connect app-network app-db
- docker network connect app-network app

### Access App via Browser
- http://localhost:8080/app/

# Composed Process