# Zeus Home Webapp

This is a basic Go web application using the Gin framework.

## Running the App

1. Install Go 1.21 or later.
2. Install dependencies (already handled by `go mod tidy`).
3. Run the server:

```sh
go run main.go
```

The app will start on http://localhost:8080

## Healthcheck Endpoint

- `GET /healthz` — returns `{ "status": "ok" }` if the server is running.
