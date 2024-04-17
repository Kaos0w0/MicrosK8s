#!/bin/bash

# Se construye la imagen
docker build -t microorquesta .

# Se le coloca el tag para dockerHub
docker tag microorquesta kaos0w0/microorquesta:latest

# Se hace un push al repositorio en dockerHub
docker push kaos0w0/microorquesta:latest

# Se destruye el archivo local de la imagen creada
docker rmi microorquesta
docker rmi kaos0w0/microorquesta