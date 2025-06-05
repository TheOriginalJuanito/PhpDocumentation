# Docker Networking

Docker networking allows containers to communicate with each other and with external systems.

## Types of Networks

- Bridge (default)
- Host
- None
- Overlay (for Docker Swarm)

## Common Commands

- `docker network ls`
- `docker network create mynet`
- `docker run --network=mynet myimage`