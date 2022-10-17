# Web App

Simple old-fashion .war Web Application form to demo "Dockerization"

## Pre Requisites
- JDK
- Git
- Maven
- Docker
- IDE

## Project Creation
- IntelliJ > New Project > Java, Maven, etc

## Project Share
- git init
- git add .
- git commit -m "initial commit"
- git remote add origin https://github.com/maniec/[repo-name.git]
- git branch -M main
- git push -u origin main

## Dependencies
- servlet
- hibernate
- mysql

## Build
- <artifactId>maven-war-plugin</artifactId>
- mvn install

# Manual Process

## Dockerfile
- mvn install
- ADD artifact to correct location
- EXPORT port

## Build Web App Image based on the Dockerfile
- docker build -t app-img:1.0 .

## Build Web App Container based on the Dockerfile Image
- bind a host port to the exposed container port
- docker run -d -p 8080:8080 --name app app-img:1.0


# Composed Process