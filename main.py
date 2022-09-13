# pip install fastapi
# pip install peewee
# pip install pymysql

from fastapi import FastAPI
from database import database as connection

app = FastAPI(title='César Rosendo - DSH - FastAPI',
                description='My first attempt at making an API',
                version='1.0.0')

@app.on_event('startup')
def startup():
    if connection.is_closed():
        connection.connect()

@app.on_event('shutdown')
def shutdown():
    if not connection.is_closed():
        connection.close()


@app.get("/")
async def root():
    return {"message": "Hello World!!"}