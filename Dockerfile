# Stage 1: Build
FROM golang:alpine AS build

WORKDIR /app

COPY . .

RUN go build -ldflags="-s -w" -o app

# Stage 2: Imagem minima
FROM scratch

WORKDIR /app

COPY --from=build /app/app .

CMD ["./app"]

