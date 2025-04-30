# GitHub MCP server

From <https://github.com/github/github-mcp-server>

## Instructions

1. Set up your GitHub token: <https://github.com/settings/tokens>

2. Copy `./env.example` to `env` and insert your API key

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
