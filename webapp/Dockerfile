# Start from the official Golang image for building
FROM golang:1.21 AS builder
WORKDIR /app
COPY . .
RUN go mod tidy && GOOS=linux GOARCH=amd64 go build -o webapp main.go

# Use a minimal base image for running
FROM debian:stable
WORKDIR /app

# Install curl for healthcheck
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

COPY --from=builder /app/webapp .
EXPOSE 8080
CMD ["./webapp"]
