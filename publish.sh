#!/bin/bash
# Build and publish frames.rumbo.dev to Cloudflare Pages.
set -euo pipefail
cd "$(dirname "$0")"
export CLOUDFLARE_API_TOKEN="$(cat "$HOME/.cloudflare-token")"
export CLOUDFLARE_ACCOUNT_ID="059d1521744aba4cc9dc0b3e8991d861"
hugo --gc --minify
npx wrangler pages deploy public --project-name=frames --branch=main
