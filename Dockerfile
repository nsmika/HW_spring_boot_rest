# Используем базовый образ с OpenJDK 8 на основе Alpine Linux
FROM openjdk:8-jdk-alpine

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем собранный jar-файл из локальной файловой системы в контейнер
COPY target/spring_boot_rest-1.0-SNAPSHOT.jar /app/spring_boot_rest.jar

# Открываем порт 8080 для доступа к приложению
EXPOSE 8080

# Команда для запуска вашего Spring Boot приложения
ENTRYPOINT ["java", "-jar", "/app/spring_boot_rest.jar"]
