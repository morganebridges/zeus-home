# Home Stack Architecture Discovery



# System Requirements

- Remote access for server sessions ()
- "managed" object storage
- Quality network storage that takes advantage of our huge drives
- Internet network ingress with authentication
- Workload execution (probably container orchestration)


# Possible Execution platforms

Kubernetes (maybe k3s, something super light)

Podman (local container orchestration I believe)

Redhat's product is Podman, for that reason I think we should try using podman and local orchestration, starting with the assumption that the server will run all of our home services as a single node,
isolated on its own VLAN and accessed through a VPN 


Read these to learn about what podman is:

https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/8/html/building_running_and_managing_containers/assembly_starting-with-containers_building-running-and-managing-containers

https://www.redhat.com/en/topics/containers/what-is-podman

Anything that has a published container can be used! Databases, caches, web frameworks, AWS services through OpenStack can be run locally. The world is our oyster!