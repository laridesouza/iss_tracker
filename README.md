# ISS Tracker

Pequeno projeto desenvolvido durante os estudos sobre **Docker e containerização** para Engenharia de Dados. 

A aplicação utiliza Python para consultar a API [Open Notify]([http://open-notify.org/](http://api.open-notify.org/iss-now.json)) e exibir no terminal a posição atual da Estação Espacial Internacional (ISS).

O principal objetivo foi praticar a criação de uma imagem Docker a partir de um `Dockerfile` e entender o processo de execução de uma aplicação dentro de um container.

## Tecnologias

* Python
* Pandas
* Docker
* Git e GitHub

## Como funciona

A aplicação realiza uma requisição à API, recebe os dados em formato JSON e extrai as informações de timestamp, latitude e longitude.

O Pandas é utilizado para organizar esses dados em um DataFrame, tornando sua visualização no terminal mais clara.

```text
API da ISS
    ↓
Python
    ↓
JSON
    ↓
DataFrame
    ↓
Terminal
```

## Docker

O `Dockerfile` define o ambiente necessário para executar a aplicação:

```dockerfile
FROM python:3.14

WORKDIR /app

COPY requirements.txt requirements.txt
COPY iss_tracker.py app.py

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "app.py"]
```

Para criar a imagem:

```bash
docker build -t iss-tracker .
```

Para executar o container:

```bash
docker run --rm iss-tracker
```

O fluxo utilizado foi:

```text
Dockerfile → Image → Container
```

## Versionamento

O desenvolvimento do projeto também foi utilizado para praticar **Git e GitHub**, trabalhando com commits, branches e merge para a `main`.

## Aprendizados

Com este projeto, tive um primeiro contato prático com Docker e entendi como utilizá-lo para **empacotar uma aplicação junto com suas dependências e executá-la em um ambiente isolado e reproduzível**.

Esse conhecimento é relevante para o trabalho com dados porque aplicações e pipelines precisam ser executados de forma consistente em diferentes ambientes. O uso de containers pode facilitar, por exemplo, a execução de scripts de coleta e transformação de dados, além de ajudar a padronizar os ambientes de desenvolvimento e execução.

Também pratiquei a organização de dependências por meio do `requirements.txt` e a definição do ambiente de execução através do `Dockerfile`.

Além disso, utilizei Git e GitHub para versionar o projeto, trabalhando com branches, commits e merge, práticas importantes para manter um histórico organizado e colaborar no desenvolvimento de projetos de dados.

