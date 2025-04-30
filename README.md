# Docker MCP Services

This repository provides Docker configurations for running various services as Model Context Protocol (MCP) servers.

## Services Included

The following service configurations are available:

- **brave-search/**: Manages Brave Search integration.
- **context7/**: Contains the configuration for the Context7 service.
- **git/**: Handles Git-related operations.
- **github/**: Provides configuration for GitHub integration.

## Getting Started

1. **Build Images:**
   Run the `make` command in the root directory of this repository.
   This will build any necessary local or customized Docker images.
2. **Service Details:**
   For specific setup instructions, usage details, and configuration options for each service, please refer to the `README.md` file located within the respective service directory (e.g., `brave-search/README.md`).

In general, each service will have an `env.example` file for you to copy to
a corresponding `env` file containing your information and API keys.

### If you fork this repo, be mindful to not commit your secrets

## Disclaimer

This software is provided "as is" without any warranty, express or implied, including but not limited to the warranties of merchantability or fitness for a particular purpose.

Copyright (c) 2025, [Kayvan Sylvan](kayvan@sylvan.com), MIT License.
