# Imagem base oficial do Go
FROM golang:alpine

# Define o diretório de trabalho
WORKDIR /app

# Copia o executável gerado para o diretório de trabalho no container
COPY app /app

# Comando a ser executado quando o container for iniciado
CMD ["/app/app"]
