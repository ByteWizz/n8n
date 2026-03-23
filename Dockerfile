FROM n8nio/n8n:latest

# Create data directory with correct permissions
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

# Switch to node user (required by Render)
USER node

# Set working directory
WORKDIR /home/node

# Expose n8n port
EXPOSE 5678

# Use absolute path to n8n binary
CMD ["/usr/local/bin/n8n", "start"]
