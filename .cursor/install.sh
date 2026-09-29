#!/usr/bin/env bash
# Idempotent environment bootstrap for the Editorial Research Collaboration repo.
#
# This project is a Markdown + Bash "agentic workflow" repository: the agent
# prompts, editorial content, and config are Markdown, and the only executable
# artifact is scripts/push_claude_captures.sh. There is no package manager,
# lockfile, build step, or long-running service. The base image already ships
# git and bash, so setup only needs to provide ShellCheck to lint the one
# automation script.
set -euo pipefail

if ! command -v shellcheck >/dev/null 2>&1; then
  sudo apt-get update -y
  sudo apt-get install -y --no-install-recommends shellcheck
fi

echo "git:        $(git --version)"
echo "bash:       $(bash --version | head -1)"
echo "shellcheck: $(shellcheck --version | awk -F': ' '/^version:/ {print $2}')"
echo "install: OK"
