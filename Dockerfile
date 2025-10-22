FROM n8nio/n8n:latest

USER root
RUN apk add --no-cache ffmpeg
USER node

# Cloud Run expects app to listen on PORT
ENV N8N_PORT=${PORT}
ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=http
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123

EXPOSE 8080

CMD ["n8n", "start"]
