.PHONY: bootstrap/podman

bootstrap/podman:
	./host_scripts/bootstrap_podman.sh


# This target can be used to load aliases
.PHONY: bootstrap/aliases
bootstrap/aliases:
	source ./host_scripts/aliases.sh


.PHONY: podman/test-http
podman/test-http:
	podman run --name basic_httpd -dt -p 8080:80/tcp docker.io/nginx
