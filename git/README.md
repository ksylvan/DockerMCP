# Git MCP server

From <https://github.com/modelcontextprotocol/servers/tree/main/src/git>

## Instructions

1. Copy `./env.example` to `env` and insert your information.

2. Edit the `env` file with your information (and the location of your `ssh` public key file)

3. Add your MCP server to run the `run.sh` script (no arguments needed)

```json
{
    "mcp": {
        "servers": {
            "Brave-Search": {
                "type": "stdio",
                "command": "~/src/DockerMCP/github/run.sh",
                "args": []
            },
        },
    }
}
```

The `run.sh` looks for Git repositories under your home directory and makes them available
to the MCP server.
