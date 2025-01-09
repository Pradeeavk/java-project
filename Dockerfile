# Use OpenJDK as the base image
FROM openjdk:17-jre-slim

# Set the working directory for the app
WORKDIR /app

# Copy the pom.xml (if you want to keep it for reference)
COPY pom.xml /app

# Copy the pre-built JAR file into the container
COPY ./target/myapp-1.0-SNAPSHOT.jar /app/myapp.jar

# Expose the port the app will run on (typically 8080 for Java apps)
EXPOSE 8080

# Set the entrypoint to run the application
ENTRYPOINT ["java", "-jar", "/app/myapp.jar"]

