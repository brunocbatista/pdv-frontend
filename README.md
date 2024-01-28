<h1 align="center">PDV - FRONTEND</h1>

## Instruções de Uso

Siga as etapas abaixo para configurar e executar o projeto localmente.

### 1. Clonar o projeto

Clone este projeto em sua máquina

### 2. Pré-requisitos

Certifique-se de que você tenha o Docker configurado em sua máquina

### 3. Copie o arquivo .env.example para .env

```bash
cp .env.example .env
```
Certifique-se de que todas as credenciais no arquivo .env estejam configuradas corretamente.

### 4. Buildar a imagem do docker

Builde a imagem do docker usando o comando

```bash
docker build -t pdv-react-app .
```

### 5. Iniciar o Docker

Inicie o Docker usando o comando. Atente-se em executar esse comando dentro do diretório do projeto

```bash
docker run -v .:/app -p 8100:8100 --name pdv-react-app -d -t pdv-react-app
```

### 5. Acessar o container

Acesse o container executando o seguinte comando

```bash
docker exec -it pdv-react-app bash
```

### 7. Instalar dependências do Node

Dentro do container, instale as dependências do Node usando o comando:

```bash
npm install
```

### 8. Executar o server do projeto

Dentro do container, execute o server do projeto usando o comando:

```bash
npm run serve
```

