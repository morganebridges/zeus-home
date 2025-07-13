.PHONY: bootstrap/podman

bootstrap/podman:
	./host_scripts/bootstrap_podman.sh

.PHONY: bootstrap/certs
bootstrap/certs:
	./host_scripts/bootstrap_certs.sh

.PHONY: bootstrap/registry
bootstrap/registry:
	./host_scripts/bootstrap_registry.sh

# This target can be used to load aliases
.PHONY: bootstrap/aliases
bootstrap/aliases:
	source ./host_scripts/aliases.sh


.PHONY: podman/test-http
podman/test-http:
	podman run --name basic_httpd -dt -p 8080:80/tcp docker.io/nginx

# The curl command below will test that the nginx server is running and that the port is accessible.
# Curl is a command-line tool for transferring data with URLs.
# A
.PHONY: podman-test/ping-http
podman-test/ping-http:
	@status=$$(curl -s -o /dev/null -w "%{http_code}" http://localhost:8080); \
	if [ "$$status" -ne 200 ]; then \
		echo "HTTP request failed with status $$status"; \
		exit 1; \
	else \
		echo "HTTP request succeeded with status $$status"; \
	fi


.PHONY: podman/webapp/deploy
podman/webapp/deploy:
	podman build -t zeus-home-webapp ./webapp
	podman tag zeus-home-webapp zeus-home-webapp
	podman tag zeus-home-webapp localhost:5000/zeus-home-webapp
	podman push localhost:5000/zeus-home-webapp
	podman run --name webapp -dt -p 6661:80/tcp localhost:5000/zeus-home-webapp