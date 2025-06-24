FROM eclipse-temurin:17-jdk-alpine

# Install required tools: git, maven, docker-cli
RUN apk update && apk add --no-cache git maven docker-cli

# Simply the artifact path
ARG artifact=target/spring-boot-web.jar

WORKDIR /opt/app

COPY ${artifact} app.jar

# This should not be changed
ENTRYPOINT ["java","-jar","app.jar"]