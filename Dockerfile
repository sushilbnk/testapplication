FROM public.ecr.aws/ubuntu/ubuntu:latest
LABEL authors="banka"

# Build stage
FROM public.ecr.aws/amazoncorretto/amazoncorretto:21 AS build
RUN yum update -y && yum install -y maven
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Run stage
FROM public.ecr.aws/amazoncorretto/amazoncorretto:21
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]