from fastapi import FastAPI
import httpx

app = FastAPI()

# Endpoint en Servicio Orquestador para iniciar la orquestación
@app.get("/orquestar")
async def orquestar():
    async with httpx.AsyncClient() as client:
        try:
            respuesta_Brandon = await client.get("http://brandon-service/brandon/Fredy")
            data_Brandon = respuesta_Brandon.json()
        except httpx.RequestError:
            data_Brandon = "El servicio de Brandon no está disponible"

        try:
            respuesta_Brayan = await client.get("http://cppserver-service/servicioBrayan")
            data_Brayan = respuesta_Brayan.text
        except httpx.RequestError:
            data_Brayan = "El servicio de Brayan no está disponible"

        try:
            respuesta_Carlos = await client.get("http://carlos-service/")
            data_Carlos = respuesta_Carlos.json()
        except httpx.RequestError:
            data_Carlos = "El servicio de Carlos no está disponible"

        try:
            respuesta_Jose = await client.get("http://msvc-bucheli-svc/")
            data_Jose = respuesta_Jose.json()
        except httpx.RequestError:
            data_Jose = "El servicio de Jose no está disponible"

        try:
            respuesta_Juan = await client.get("http://getial-service-service/")
            data_Juan = respuesta_Juan.text
        except httpx.RequestError:
            data_Juan = "El servicio de Juan no está disponible"

        try:
            respuesta_Mauricio = await client.get("http://servicio-mmg-service/servicio-mmg")
            data_Mauricio = respuesta_Mauricio.json()
        except httpx.RequestError:
            data_Mauricio = "El servicio de Mauricio no está disponible"

        try:
            respuesta_Sebastian = await client.get("http://sebastian-service-service/msvc_sebastian")
            data_Sebastian = respuesta_Sebastian.json()
        except httpx.RequestError:
            data_Sebastian = "El servicio de Sebastian no está disponible"

    return {"Respuesta Servicio Brandon": data_Brandon,
            "Respuesta Servicio Brayan": data_Brayan,
            "Respuesta Servicio Carlos": data_Carlos,
            "Respuesta Servicio Jose": data_Jose,
            "Respuesta Servicio Juan": data_Juan,
            "Respuesta Servicio Mauricio": data_Mauricio,
            "Respuesta Servicio Sebastian": data_Sebastian,
            }