# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-oracle

# Set the working directory inside the container
WORKDIR /app

# Copy the application artifact into the container at /app
COPY target/spring-petclinic-3.3.0-SNAPSHOT.jar /app/spring-petclinic-3.3.0-SNAPSHOT.jar

ENV MYSQL_URL=jdbc:mysql://petclinic-mysql:3306/petclinic

# Specify the command to run your application
CMD ["java", "-jar", "spring-petclinic-3.3.0-SNAPSHOT.jar"]
