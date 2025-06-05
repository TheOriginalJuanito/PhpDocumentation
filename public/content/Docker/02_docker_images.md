# Docker Images

A Docker image is a read-only template used to create containers.

## Creating Images

- Use a `Dockerfile` to define an image
- Build with `docker build -t myimage .`

## Best Practices

- Use official base images
- Minimize the number of layers
- Clean up intermediate files