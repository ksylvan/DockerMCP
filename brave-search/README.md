# Brave Search MCP Server

From <https://github.com/modelcontextprotocol/servers/tree/main/src/brave-search>

## Instructions

1. Set up your Brave Search API key: <https://api-dashboard.search.brave.com/app/dashboard>

2. Copy `./env.example` to `env` and insert your API key

3. Add your MCP server to run the `run.sh` script (no arguments needed)

```json
{
    "mcp": {
        "servers": {
            "Brave-Search": {
                "type": "stdio",
                "command": "~/src/DockerMCP/brave-search/run.sh",
                "args": []
            },
        },
    }
}
```
