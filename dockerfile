# Runtime-only image; must match the Java you compiled with
FROM eclipse-temurin:24-jdk

# Set work directory inside the container
WORKDIR /app

# Copy the JAR built by Gradle into the image
COPY build/libs/*.jar app.jar

# Expose Spring Boot's default port
EXPOSE 8080

# Run the app
ENTRYPOINT ["java","-jar","app.jar"]
