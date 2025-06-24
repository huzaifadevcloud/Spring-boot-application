FROM eclipse-temurin:17-jdk-alpine

# Set work directory (optional, but neat)
WORKDIR /app

# Copy the built jar from the target directory
ARG JAR_FILE=target/spring-boot-web.jar
COPY ${JAR_FILE} app.jar

# Expose the port your Spring Boot app runs on (optional)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]