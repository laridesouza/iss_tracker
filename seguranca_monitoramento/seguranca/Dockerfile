# Reduzindo superfícies de ataque
FROM python:3.14-slim

# Atualizações e Limpeza de cache

RUN apt-get upadate && \
    apt-get install -y --no-install-recommends \
        gcc \
        libc-dev \ 
     && \
    apt-get clean
    rm -rf /var/lib/apt/lists/*
    
    
# Utilização de usuários não privilegiados

RUN groupadd -r groupuser && useradd -r -g groupuser myuser
USER myuser

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "app.py"]
