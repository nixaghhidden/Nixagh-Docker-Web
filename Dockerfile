# Build the project
FROM maven:3.9.6-amazoncorretto-21-debian
COPY . .
RUN mvn clean install -DskipTests

# define the base image
FROM openjdk:21
# copy the jar file to the container
COPY --from=build /target/NixaghDockerWeb-0.0.1-SNAPSHOT.jar NixaghDockerWeb.jar

# expose the port
EXPOSE 8080
# run the jar file
ENTRYPOINT ["java", "-jar", "NixaghDockerWeb.jar"]