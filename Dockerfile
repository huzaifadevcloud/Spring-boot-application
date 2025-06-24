# Runtime image using Java 17
FROM eclipse-temurin:17-jdk-alpine

# Copy the built jar file into the container
ARG JAR_FILE=target/spring-boot-web.jar
COPY ${JAR_FILE} app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
