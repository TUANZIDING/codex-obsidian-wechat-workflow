#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

required_files=(
  "README.md"
  "CONTEXT.md"
  "docs/architecture.md"
  "docs/workflow.md"
  "docs/approval-gates.md"
  "docs/release-readiness.md"
  "templates/package/manifest.yml"
  "templates/package/article.md"
  "templates/package/claim-ledger.tsv"
  "scripts/validate_preview.sh"
)

for file in "${required_files[@]}"; do
  if [[ ! -f "$ROOT_DIR/$file" ]]; then
    echo "MISSING: $file" >&2
    exit 1
  fi
done

if rg -n --hidden --glob '!scripts/validate_preview.sh' \
  'sk-[A-Za-z0-9]{20,}|ghp_[A-Za-z0-9]{20,}|-----BEGIN (RSA|OPENSSH|PRIVATE) KEY-----' \
  "$ROOT_DIR" >/tmp/codex_obsidian_wechat_secret_scan.txt 2>/dev/null; then
  echo "POSSIBLE SECRET: inspect /tmp/codex_obsidian_wechat_secret_scan.txt" >&2
  exit 1
fi

if rg -n '^(status:|user_approval:).*?(published|uploaded)' "$ROOT_DIR/templates/package/manifest.yml" >/dev/null 2>&1; then
  echo "INVALID TEMPLATE STATUS: templates must not claim an external release" >&2
  exit 1
fi

echo "Preview structure, template presence, and basic secret scan passed."
echo "This does not prove medical accuracy, copyright clearance, GitHub publication, or WeChat publication."
