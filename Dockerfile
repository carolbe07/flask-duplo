FROM python:3.11-slim

RUN apt-get update && apt-get install -y \
    libjpeg-dev zlib1g-dev libpng-dev \
    && pip install --no-cache-dir flask pillow requests

WORKDIR /app
COPY . .

CMD ["python", "app.py"]
