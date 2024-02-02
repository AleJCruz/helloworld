# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY build/libs/*.jar app.jar

# Specify the command to run on container start
CMD ["java", "-jar", "app.jar"]
