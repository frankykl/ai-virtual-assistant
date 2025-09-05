#!/bin/bash
systemctl start ollama 
python3 -m uvicorn --host 0.0.0.0 --port 8081 --workers 1 --loop asyncio src.agent.server:app
