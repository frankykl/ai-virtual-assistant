#!/bin/bash
systemctl start ollama 
python3 -m uvicorn --host $1 --port $2 --workers $3 --loop asyncio src.retrievers.server:app
