FROM n8nio/n8n:latest

# Install ffmpeg using Alpine's package manager
USER root
RUN apk update && apk add --no-cache ffmpeg

# Switch back to the n8n user
USER node

# Expose the n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
