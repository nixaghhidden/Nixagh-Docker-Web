# Build the project
FROM maven:3.9.6-eclipse-temurin-21-jammy AS build
WORKDIR /app
COPY . /app/
RUN mvn clean install

# define the base image
FROM openjdk:21-nanoserver
# copy the jar file to the container
COPY --from=build /app/target/*.jar /app/NixaghDockerWeb.jar

# expose the port
EXPOSE 8080
# run the jar file
ENTRYPOINT ["java", "-jar", "NixaghDockerWeb.jar"]