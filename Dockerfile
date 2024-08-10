FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
COPY target/collection-management-0.0.1-SNAPSHOT.jar collection-management.jar
ENTRYPOINT ["java","-jar","/collection-management.jar"]