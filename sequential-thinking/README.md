# Sequential Thinking MCP Server

From <https://github.com/modelcontextprotocol/servers/tree/main/src/sequentialthinking>

## Instructions

1. Add your MCP server to run the docker container.

```json
{
    "mcp": {
        "servers": {
            "SequentialThinking": {
                "type": "stdio",
                "command": "docker",
                "args": [
                "run",
                "-i",
                "--rm",
                "mcp/sequentialthinking"
                ]
            },
        },
    }
}
```
