FROM maven:3-jdk-8 as build
#FROM openjdk:8-jdk-alpine as build

WORKDIR /app

COPY . ./

#RUN sh ./mvnw install dockerfile:build
RUN mvn package -B

FROM openjdk:8-jdk-alpine

VOLUME /tmp
COPY --from=build /app/target/*.jar  app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]