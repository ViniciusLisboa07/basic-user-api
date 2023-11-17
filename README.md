# Api de User

## Pré-requisitos
Certifique-se de ter as seguintes ferramentas instaladas em sua máquina:
- [Ruby](https://www.ruby-lang.org/)
- [Ruby on Rails](https://rubyonrails.org/)
- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

## Configuração do Projeto

1. Clone o repositório para a sua máquina local:

    ```bash
    git clone https://github.com/ViniciusLisboa07/basic-user-api
    cd basic-user-api
    ```
2. Instale o projeto atraves do docker-compose:

    ```bash
    docker-compose up --build
    ```

3. Configure o banco de dados:

    - Acesse o bash

    ```bash
      	sudo docker-compose exec web /bin/bash
    ```

    ```bash
    rails db:create
    rails db:migrate
    ```

  O aplicativo estará disponível em `http://localhost:3000`.

