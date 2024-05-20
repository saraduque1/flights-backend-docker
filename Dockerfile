FROM openjdk:17-jdk-alpine

COPY target/Flights-0.0.1-SNAPSHOT.jar /app/Flights-0.0.1-SNAPSHOT.jar

WORKDIR /app

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app/Flights-0.0.1-SNAPSHOT.jar"]