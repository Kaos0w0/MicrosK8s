#!/bin/bash

# Se construye la imagen
docker build -t mi-servidor-cpp .

# Se le coloca el tag para dockerHub
docker tag mi-servidor-cpp kaos0w0/mi-servidor-cpp:latest

# Se hace un push al repositorio en dockerHub
docker push kaos0w0/mi-servidor-cpp:latest

# Se destruye el archivo local de la imagen creada
docker rmi mi-servidor-cpp
docker rmi kaos0w0/mi-servidor-cpp