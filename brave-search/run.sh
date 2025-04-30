#!/bin/bash

# Change to the directory containing this script
cd "$(dirname "$0")" || exit

docker run -i --rm --env-file env mcp/brave-search
