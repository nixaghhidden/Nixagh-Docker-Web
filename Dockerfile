# run maven build
FROM maven:3.9.2-eclipse-temurin-17-alpine as builder

COPY ./src src/
COPY ./pom.xml pom.xml

RUN mvn clean package -DskipTests

# define the base image
FROM openjdk:22
LABEL maintainer="nixagh.com"

ADD target/NixaghDockerWeb-0.0.1-SNAPSHOT.jar NixaghDockerWeb.jar
ENTRYPOINT ["java", "-jar", "NixaghDockerWeb.jar"]