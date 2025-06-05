## Running the Project with Docker

This project includes a Docker setup for running the PHP application located in the `public/` directory. The Docker configuration uses PHP 8.2 with Apache and is designed to run the application as a non-root user for improved security.

### Requirements
- Docker and Docker Compose installed on your system.
- No additional PHP extensions or external dependencies are required for this application.

### Build and Run Instructions
1. **Build and start the service:**
   ```sh
   docker compose up --build
   ```
   This will build the Docker image from the `public/` directory and start the Apache server.

2. **Access the application:**
   - The application will be available at [http://localhost/](http://localhost/) on your machine.

### Configuration Details
- **PHP Version:** 8.2 (as specified in the Dockerfile)
- **Exposed Port:**
  - `80:80` (host:container) — Apache default port
- **Environment Variables:**
  - No required environment variables are specified. If you need to use a `.env` file, uncomment the `env_file` line in the `docker-compose.yml`.
- **Volumes:**
  - No volumes are configured, as there is no persistent data or database required for this project.

### Special Notes
- The application runs as a non-root user (`appuser`) inside the container for security.
- No special configuration is needed beyond the provided Docker setup.

---

*This section was updated to reflect the current Docker-based setup for running the project.*