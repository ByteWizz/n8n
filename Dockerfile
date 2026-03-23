FROM n8nio/n8n:latest

# Create directory for SQLite database
RUN mkdir -p /home/node/.n8n

# Set proper permissions
RUN chown -R node:node /home/node/.n8n

# Switch to node user
USER node

# Expose n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
