FROM n8nio/n8n:latest

# Create data directory with correct permissions
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

# Switch to node user (required by Render)
USER node

# Expose n8n port
EXPOSE 5678

# Use the correct command - just "start" not "n8n start"
CMD ["start"]
