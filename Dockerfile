# Build the project
FROM maven:3.9.6-amazoncorretto-21-debian
COPY . .
RUN mvn clean install -DskipTests

# define the base image
FROM openjdk:21
# copy the jar file to the container
ADD target/NixaghDockerWeb-0.0.1-SNAPSHOT.jar NixaghDockerWeb.jar
ENTRYPOINT ["java", "-jar", "NixaghDockerWeb.jar"]