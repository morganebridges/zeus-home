#!/bin/bash


# Start a local HTTPS registry (if not already running)

# Remove any existing registry container
podman rm -f registry 2>/dev/null || true

# Create the certificates directory if it doesn't exist
# Certificates are required for HTTPS. HTTPS encrypts the data sent over the network, making it secure.
# In addition, when we use a certificate with our nginx webserver, we will be able to validate that the 
# server we are connecting to is the one we expect, and that it is not being intercepted by a third party.
CERTS_DIR=/home/morgan/certs
podman run -d \
  -p 5000:5000 \
  --name registry \
  -v $CERTS_DIR:/certs \
  -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/domain.crt \
  -e REGISTRY_HTTP_TLS_KEY=/certs/domain.key \
  registry:2

# Tag your Docker image for the local registry
podman tag zeus-home-webapp localhost:5000/zeus-home-webapp

# Push it to the local registry
podman push localhost:5000/zeus-home-webapp

# Pull it with Podman
podman pull localhost:5000/zeus-home-webapp