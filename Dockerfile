FROM artifactory.cloud.cms.gov/docker/maven:3.9-amazoncorretto-11-debian
RUN addgroup --system nonroot \
    && adduser --system nonroot --group nonroot
USER nonroot
ADD target/my-app-1.0-SNAPSHOT.jar my-app-1.0-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar","my-app-1.0-SNAPSHOT.jar"]
EXPOSE 8080