# Usar una imagen de Maven para construir el proyecto
FROM eclipse-temurin:21-jdk-alpine as build

# Establecer el directorio de trabajo
WORKDIR /build

# Copiar el archivo pom.xml y los archivos de código fuente al contenedor
COPY microservice/pom.xml .
COPY microservice/.mvn ./.mvn
COPY microservice/src/ src/
COPY microservice/mvnw .

# Construir el proyecto y crear el JAR
RUN /build/mvnw clean package

# Usar openjdk para ejecutar la aplicación
FROM eclipse-temurin:21-jdk-alpine

# Copiar el JAR construido desde la imagen de construcción
COPY --from=build /build/target/microservice-0.0.1-SNAPSHOT.jar /app.jar

EXPOSE 8080

# Establecer el comando para ejecutar la aplicación
CMD ["java", "-jar", "/app.jar"]
