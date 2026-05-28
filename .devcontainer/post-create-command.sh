#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "${SCRIPT_DIR}"

nix run "path:${SCRIPT_DIR}#homeConfigurations.vscode.activationPackage"
