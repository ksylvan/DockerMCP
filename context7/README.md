# Context7 MCP - Up-to-date Docs For Any Prompt

From <https://github.com/upstash/context7>

## Instructions

1. Make sure the local `context7-mcp` image is created (See [the repo README](../README.md) for instructions).

2. Add your MCP server to run the docker container.

```json
{
    "mcp": {
        "servers": {
            "Context7": {
                "type": "stdio",
                "command": "docker",
                "args": [
                "run",
                "-i",
                "--rm",
                "context7-mcp"
                ]
            },
        },
    }
}
```
