FROM  python:3.14

WORKDIR /app

# Garantindo que ao rodar o comando crie a estrutura de arquivos
RUN mkdir -p /app/data

# Copiando a aplicacao
COPY ./app.py .

# Entry point
CMD ["python", "app.py"]