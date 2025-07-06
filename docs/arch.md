# Home Stack Architecture Discovery



# System Requirements

- Remote access for server sessions ()
- "managed" object storage
- Network storage that takes advantage of our huge drives
- Internet network ingress with authentication
- Workload execution (probably container orchestration)


# Possible Execution platforms

Kubernetes (maybe k3s, something super light)

Podman (local container orchestration I believe)

Redhat's product is Podman, for that reason I think we should try using podman and local orchestration, starting with the assumption that the server will run all of our home services as a single node,
isolated on its own VLAN and accessed through a VPN 