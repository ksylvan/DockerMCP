#!/bin/bash

# Change to the directory containing this script
cd "$(dirname "$0")"

docker run -i --rm --env-file env ghcr.io/github/github-mcp-server
