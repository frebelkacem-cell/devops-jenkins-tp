# A utiliser plus tard, pour le(s) TP portant sur Docker (pas pour le TP1).
FROM maven:3.9-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn -q clean package

FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
COPY --from=build /app/target/calculator-app.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
