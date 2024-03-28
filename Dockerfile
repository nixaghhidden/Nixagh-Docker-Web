# define the base image
FROM openjdk:21
LABEL maintainer="nixagh.com"

ADD target/NixaghDockerWeb-0.0.1-SNAPSHOT.jar NixaghDockerWeb.jar
ENTRYPOINT ["java", "-jar", "NixaghDockerWeb.jar"]