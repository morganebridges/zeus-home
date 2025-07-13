mkdir -p ~/certs
openssl req -newkey rsa:4096 -nodes -sha256 -keyout ~/certs/domain.key -x509 -days 365 -out ~/certs/domain.crt -subj "/CN=localhost" -addext "subjectAltName=DNS:localhost"

