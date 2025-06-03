# syntax=docker/dockerfile:1

# --- Stage 1: Base PHP image ---
FROM php:8.2-apache AS base

# Install any PHP extensions you need here (none required for this app)
# Enable Apache mod_rewrite if needed (not strictly required for this app, but common for PHP apps)
RUN a2enmod rewrite

# --- Stage 2: Final image with non-root user ---
FROM base AS final

# Create a non-root user and group
RUN addgroup --system appgroup && adduser --system --ingroup appgroup appuser

# Set working directory
WORKDIR /var/www/html

# Copy application code (excluding .git, .env, etc. via .dockerignore)
COPY --link . .

# Set permissions for non-root user
RUN chown -R appuser:appgroup /var/www/html

# Switch to non-root user
USER appuser

# Expose port 80 (default for Apache)
EXPOSE 80

# The default Apache CMD is fine
CMD ["apache2-foreground"]
