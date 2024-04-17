#!/bin/bash

# Despliegue de microservicio de Brandon
kubectl delete -f msvc_brandon/service.yaml

# Despliegue de microservicio de Brayan
kubectl delete -f msvc_brayan/servicioBrayan.yml

# Despliegue de microservicio de Carlos
kubectl delete -f msvc_carlos/config_msvc.yaml

# Despliegue de microservicio de Jose
kubectl delete -f msvc_jose/manifest.yml

# Despliegue de microservicio de Juan
kubectl delete -f msvc_juan/msvc_getial.yml

# Despliegue de microservicio de Mauricio
kubectl delete -f msvc_mauricio/serviciommg.yml

# Despliegue de microservicio de Sebastian
kubectl delete -f msvc_sebastian/msvc_sebastian.yml

# Despliegue del API Gateway
kubectl delete -f APIgw/servicioOrquesta.yml