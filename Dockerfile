FROM maven:3.8.3-openjdk-11 AS BUILD
COPY . .
RUN mvn clean install
FROM maven:3.8.3-openjdk-11
COPY --from=BUILD /target/my-app-2.0-SNAPSHOT.jar b7.jar
CMD ["java","-jar","b7.jar"]

