FROM n8nio/n8n:latest

# Create data directory
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

# Switch to non-root user (required by Render)
USER node

# Expose n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
