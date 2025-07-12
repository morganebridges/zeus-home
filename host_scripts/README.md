# Host Scripts

This directory contains scripts used to configure the underlying Linux machine that will host our containers. These scripts handle various setup tasks to ensure the environment is properly prepared for container execution.

## Usage

Most scripts in this directory are executed via `make` targets. Using `make` simplifies the process and ensures consistent execution of the scripts.

### Example

To run a specific setup script, use the corresponding `make` target:

```bash
make <target-name>
```

Refer to the `Makefile` for a list of available targets and their descriptions.

## Notes

- Ensure you have `make` installed on your system before running the scripts.
- Scripts may require elevated privileges (e.g., `sudo`) depending on the configuration tasks they perform.

## Contribution

If you add new scripts, ensure they are properly documented and integrated into the `Makefile` with clear target names.


## Podman Setup

To install podman on your linux computer, use the bootstrap make target.

From the project root (`zeus-home`)

```bash
  make bootstrap/podman
```

All the commands created under the `bootstrap/` namespace will be for setting up various components of the homelab.


## Using the aliases