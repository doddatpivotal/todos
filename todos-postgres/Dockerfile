FROM openjdk:8-jre-alpine

RUN apk add --no-cache curl

ADD target/todos-postgres-1.0.0-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom","-Xmx512m", "-jar", "/app.jar"]
