# Base da imagem
FROM python:3.14

# Definir qual será o diretório de trabalho da app -> container
WORKDIR /app

# Copiar o arquivo de config de dependências
COPY requirements.txt requirements.txt

# Copiar o arquivo da aplicação
COPY iss_tracker.py app.py

# Instalando as depedências 
RUN pip install --no-cache-dir -r requirements.txt

# Execução de entrada do container/app
CMD ["python", "app.py"]