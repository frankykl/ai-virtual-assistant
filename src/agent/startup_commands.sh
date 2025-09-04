#!/bin/bash
systemctl start ollama 
python3 -m uvicorn src.agent.server:app --loop asyncio --reload
