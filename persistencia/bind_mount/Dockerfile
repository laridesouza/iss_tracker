FROM  python:3.14

WORKDIR /app

# Garantindo que ao rodar o comando crie a estrutura de arquivos
RUN mkdir -p /app/data

# Copiando requirements para dentro do diretorio de trabalho  
COPY requirements.txt . 

# Instalacao de dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiando a aplicacao
COPY ./iss_tracker.py .

CMD ["python", "iss_tracker.py"]