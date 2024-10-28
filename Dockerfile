# Use Maven with Java 21
FROM maven:3.8.8-eclipse-temurin-21

# Set the working directory in the container
WORKDIR /app

# Copy the pom.xml to the working directory
COPY pom.xml /app/

# Copy the rest of the application files
COPY . /app/

# Run Maven to build the application
RUN mvn package

# Use CMD in uppercase to match Docker command case consistency
CMD ["java", "-jar", "target/test.jar"]
