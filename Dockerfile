FROM dquintela/openjdk-8-jdk-alpine
COPY target/*.jar /app/b7.jar
WORKDIR /app
CMD ["java","-jar","b7.jar"]
