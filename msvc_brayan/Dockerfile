# Utiliza una imagen base oficial de C++
FROM gcc:latest

# Copia el archivo del servidor en el contenedor
COPY server.cpp /usr/src/myapp/server.cpp

# Copia el archivo de encabezado de Cpp-httplib
COPY httplib.h /usr/src/myapp/httplib.h

# Establece el directorio de trabajo
WORKDIR /usr/src/myapp

# Compila el código fuente
RUN g++ -o myserver -std=c++11 server.cpp -pthread

# Expone el puerto en el que se ejecutará el servidor
EXPOSE 8001

# Comando para ejecutar el servidor
CMD ["./myserver"]