#!/bin/bash

# Despliegue de microservicio de Brandon
kubectl apply -f msvc_brandon/service.yaml

# Despliegue de microservicio de Brayan
kubectl apply -f msvc_brayan/servicioBrayan.yml

# Despliegue de microservicio de Carlos
kubectl apply -f msvc_carlos/config_msvc.yaml

# Despliegue de microservicio de Jose
kubectl apply -f msvc_jose/manifest.yml

# Despliegue de microservicio de Juan
kubectl apply -f msvc_juan/msvc_getial.yml

# Despliegue de microservicio de Mauricio
kubectl apply -f msvc_mauricio/serviciommg.yml

# Despliegue de microservicio de Sebastian
kubectl apply -f msvc_sebastian/msvc_sebastian.yml

# Despliegue del API Gateway
kubectl apply -f APIgw/servicioOrquesta.yml