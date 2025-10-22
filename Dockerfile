FROM n8nio/n8n:latest

USER root
RUN apk add --no-cache ffmpeg
USER node

ENV N8N_PORT=8080
ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=http

EXPOSE 8080

CMD ["n8n", "start"]
