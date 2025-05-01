# Dockerfile for Context7 MCP
FROM node:23-slim

WORKDIR /app

# Install the latest version globally
RUN npm install -g npm@11.3.0 && npm install -g @upstash/context7-mcp@latest

# Expose default port if needed (optional, depends on MCP client interaction)
# EXPOSE 3000
# We do npt need to expose the port as the MCP client will connect with stdio

# Default command to run the server
CMD ["context7-mcp"]
