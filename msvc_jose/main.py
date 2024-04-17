from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Hi there!, my name is Jose and i love to code!"}
