# Base image with Maven and Java 17
FROM maven:3.9.6-eclipse-temurin-17

# Switch to root user to install additional packages
USER root

# Install Docker CLI inside container (for Docker-in-Docker)
RUN apt-get update && apt-get install -y docker.io && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Default command to keep container running so Jenkins can exec into it
CMD ["tail", "-f", "/dev/null"]