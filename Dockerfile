FROM public.ecr.aws/ubuntu/ubuntu:latest
LABEL authors="banka"

# Build stage
FROM public.ecr.aws/amazoncorretto/amazoncorretto:21 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Run stage
FROM public.ecr.aws/amazoncorretto/amazoncorretto:21-alpine
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]