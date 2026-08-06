#!/usr/bin/env bash
# Watch-drop helper: commit + push new Claude delta files from the local inbox.
# Drop folder: editorial/captures/claude/YYYY-MM-DD.md
# Safe to run repeatedly (LaunchAgent polls every minute).

set -euo pipefail

REPO="$(cd "$(dirname "$0")/.." && pwd)"
INBOX="$REPO/editorial/captures/claude"
LOG_DIR="$REPO/logs"
LOG="$LOG_DIR/claude_captures_watch.log"
LOCK="$LOG_DIR/claude_captures_watch.lock"

mkdir -p "$LOG_DIR" "$INBOX"

log() {
  printf '%s %s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$*" >>"$LOG"
}

# Prevent overlapping runs
if [[ -f "$LOCK" ]]; then
  lock_pid="$(cat "$LOCK" 2>/dev/null || true)"
  if [[ -n "${lock_pid:-}" ]] && kill -0 "$lock_pid" 2>/dev/null; then
    exit 0
  fi
fi
echo $$ >"$LOCK"
trap 'rm -f "$LOCK"' EXIT

cd "$REPO"

# Ensure we're on main and up to date enough to push
git fetch origin main --quiet 2>/dev/null || true
current_branch="$(git branch --show-current 2>/dev/null || true)"
if [[ "$current_branch" != "main" ]]; then
  log "skip: not on main (on ${current_branch:-unknown})"
  exit 0
fi

shopt -s nullglob
candidates=("$INBOX"/[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9].md)
if [[ ${#candidates[@]} -eq 0 ]]; then
  exit 0
fi

to_add=()
for f in "${candidates[@]}"; do
  rel="${f#"$REPO"/}"
  # Untracked or modified vs HEAD
  if ! git cat-file -e "HEAD:$rel" 2>/dev/null; then
    to_add+=("$rel")
    continue
  fi
  if ! git diff --quiet -- "$rel" 2>/dev/null; then
    to_add+=("$rel")
  fi
done

if [[ ${#to_add[@]} -eq 0 ]]; then
  exit 0
fi

# Prefer fast-forward pull so push rarely diverges
if git rev-parse --abbrev-ref '@{u}' >/dev/null 2>&1; then
  git pull --ff-only --quiet || {
    log "error: pull --ff-only failed; resolve manually"
    exit 1
  }
fi

git add -- "${to_add[@]}"

if git diff --cached --quiet; then
  exit 0
fi

# Commit message from latest dated filename
msg="Claude editorial delta: $(date '+%Y-%m-%d')"
latest_date=""
for rel in "${to_add[@]}"; do
  base="$(basename "$rel" .md)"
  if [[ "$base" =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}$ ]]; then
    if [[ -z "$latest_date" || "$base" > "$latest_date" ]]; then
      latest_date="$base"
    fi
  fi
done
if [[ -n "$latest_date" ]]; then
  msg="Claude editorial delta: $latest_date"
fi

git commit -m "$msg" --quiet
if git push origin main --quiet; then
  log "pushed: ${to_add[*]}"
else
  log "error: push failed after commit"
  exit 1
fi
