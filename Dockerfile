# Stage 1: Build
FROM golang:alpine AS build

WORKDIR /app

COPY . .

# Adicione quaisquer comandos adicionais necessários para compilar seu aplicativo
RUN go build -ldflags="-s -w" -o app

# Stage 2: Imagem mínima
FROM scratch

WORKDIR /app

COPY --from=build /app/app .

CMD ["./app"]

