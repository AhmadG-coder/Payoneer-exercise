import asyncio

from fastapi import FastAPI

app = FastAPI()
lock = asyncio.Lock()

counter = 0


@app.get("/")
async def do_something():
    global counter
    return counter


@app.post("/")
async def increment():
    global counter
    async with lock:
        counter += 1
    return {f"counter: {counter}"}


