FROM amazoncorretto:17-alpine

WORKDIR /app

COPY gradlew /app/gradlew
COPY gradle /app/gradle
COPY build.gradle /app/
COPY settings.gradle /app/

RUN chmod +x ./gradlew

EXPOSE 8080

CMD ["./gradlew", "bootRun"]
