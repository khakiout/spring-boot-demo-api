# Step : Test and package
# maven build image
FROM maven:3.5.3-jdk-8-alpine as build

WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline install --fail-never

COPY . ./
RUN mvn package

# Step : Package image
# package runnable image
FROM openjdk:8-jre-alpine

VOLUME /tmp
COPY --from=build /app/target/*.jar  app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
