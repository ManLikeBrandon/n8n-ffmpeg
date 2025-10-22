# Use Debian-based n8n image (supports apt-get)
FROM n8nio/n8n:1.75.0-debian

# Install ffmpeg
USER root
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Switch back to node user
USER node

# Expose port for Cloud Run
ENV N8N_PORT=8080
ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=http
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123

EXPOSE 8080

CMD ["n8n", "start"]
