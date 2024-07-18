# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application artifact into the container at /app
COPY target/*.jar /app/petclinic.jar

ENV MYSQL_URL=jdbc:mysql://petclinic-mysql:3306/petclinic

# Specify the command to run your application
CMD ["java", "-jar", "petclinic.jar"]
