# Claude captures inbox (local drop → auto GitHub push)

**Drop folder (on your Mac):**
`/Users/felisawiley/Desktop/agentic_workflows/editorial/captures/claude/`

Save files as `YYYY-MM-DD.md` (example: `2026-08-10.md`).

A local LaunchAgent runs every 60s, commits new/changed dated files, and pushes to `main`. Monday’s Editorial automation then reads them from GitHub.

## One-time install (Mac)

```bash
chmod +x /Users/felisawiley/Desktop/agentic_workflows/scripts/push_claude_captures.sh
mkdir -p ~/Library/LaunchAgents
cp /Users/felisawiley/Desktop/agentic_workflows/scripts/com.felisawiley.claude-captures-push.plist ~/Library/LaunchAgents/
launchctl unload ~/Library/LaunchAgents/com.felisawiley.claude-captures-push.plist 2>/dev/null
launchctl load ~/Library/LaunchAgents/com.felisawiley.claude-captures-push.plist
```

Test without waiting:

```bash
/Users/felisawiley/Desktop/agentic_workflows/scripts/push_claude_captures.sh
```

Logs: `logs/claude_captures_watch.log`

## Notes

- Ignores `README.md`
- Only picks up `YYYY-MM-DD.md`
- Must stay on branch `main` for auto-push
- Claude Code cloud routine can still write here remotely; this path is for **local** saves

Processed-by-editorial filenames are tracked in `editorial/status.md` under `Processed Claude captures`.
