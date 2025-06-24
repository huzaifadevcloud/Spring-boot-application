# You can change this base image to anything else
# But make sure to use the correct version of Java
# Use Java 17 base image

FROM maven:3.9.6-eclipse-temurin-17

# Install Docker CLI
RUN apt-get update && apt-get install -y docker.io

# Simply the artifact path
ARG artifact=target/spring-boot-web.jar

WORKDIR /opt/app

COPY ${artifact} app.jar

# This should not be changed
ENTRYPOINT ["java","-jar","app.jar"]
