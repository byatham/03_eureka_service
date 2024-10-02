# Use the official OpenJDK base image
FROM openjdk:17-jdk-slim


# Copy the jar file into the container
ADD target/eureka-server.jar eureka-server.jar

# Expose the port on which the application will run
EXPOSE 8761

# Command to run the application
ENTRYPOINT ["java", "-jar", "eureka-server.jar"]
