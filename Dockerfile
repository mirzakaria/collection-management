FROM maven:3-eclipse-temurin-17 AS build
COPY . .
RUN mvn clean package -DskipTests
FROM eclipse-temurin:17-alpine
COPY --from=build /target/collection-management-0.0.1-SNAPSHOT.jar collection-management.jar
ENTRYPOINT ["java","-Dspring.profiles.active=render","-jar","collection-management.jar"]