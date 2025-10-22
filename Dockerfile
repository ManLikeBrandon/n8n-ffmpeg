FROM n8nio/n8n:latest

# Prevent prompts during install
ENV DEBIAN_FRONTEND=noninteractive

# Update and install ffmpeg
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set default working directory
WORKDIR /home/node

# Expose port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
