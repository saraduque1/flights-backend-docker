# Spring Boot Application

## Descripción

Esta es una aplicación Spring Boot que proporciona una API RESTful para gestionar vuelos y tarifas. La aplicación incluye endpoints para buscar vuelos por fechas y ciudades, así como para gestionar tarifas de vuelos.

## Tecnologías Utilizadas

- Java 17
- Spring Boot 3.2.5
- Spring Data JPA
- MySQL
- Docker
- Docker compose
- Swagger/OpenAPI 
- JUnit 5
- Mockito
- MapStruct
- Lombok
- Spring Boot Actuator

## Prerrequisitos

- JDK 17 
- Maven
- MySQL
- Docker
- Docker Compose

## Configuración

1. Clona el repositorio:
    ```bash
    git clone https://github.com/saraduque1/flights-backend.git
    cd flights-backend
    ```

2. Configura la base de datos en el archivo `application.properties`:
    ```properties
    spring.application.name=nombre_de_la_aplicacion
    server.port=8089
    spring.datasource.url=jdbc:mysql://db:3306/nombre_de_la_base_de_datos?useUnicode=true&characterEncoding=UTF-8
    spring.datasource.username=tu_usuario
    spring.datasource.password=tu_contraseña
    spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
    spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQLDialect
    spring.jpa.hibernate.ddl-auto=update
    spring.jpa.show-sql=true
    ```

## Docker Configuración 

Para construir la aplicación, puedes usar el siguiente comando de Maven, este construira en la carpeta target un archivo .jar el cuál se utilizara para la imagen en Docker de la aplicación:

1. Construir el proyecto de spring boot:
    ```bash
    mvn clean install
    ```
2. Configurar el archivo Dockerfile:
   ```Dockerfile
    FROM openjdk:17-jdk-alpine

    COPY target/nombre_del_jar.jar /app/nombre_del_jar.jar
    
    WORKDIR /app
    
    EXPOSE 8080
    
    ENTRYPOINT ["java", "-jar", "/app/nombre_del_jar.jar"]
    ```
3. Configurar el archivo docker-compose.yml
4. Construir y ejecutar Docker Compose:
   ```bash
    docker-compose up
    ```
5. Para detener Docker Compose:
    ```bash
    docker-compose down
    ```

La aplicación estará disponible en `http://localhost:8080`.

## Documentación de la API

La documentación de la API está disponible en `http://localhost:8080/swagger-ui.html`.

## Configuración de Lombok y MapStruct

El proyecto está configurado para usar Lombok y MapStruct. No olvides instalar el plugin de Lombok en tu IDE para que funcione correctamente.
