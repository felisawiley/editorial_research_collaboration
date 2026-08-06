# Claude captures inbox

Fully automatic path:

1. **Claude Code routine** (Sunday) writes `YYYY-MM-DD.md` here and pushes to `main`
2. **Cursor Editorial Weekly** (Monday) reads unprocessed files and updates `editorial/status.md`

Routine setup + prompt: [`../claude_cowork_delta_prompt.md`](../claude_cowork_delta_prompt.md)

Processed filenames are listed in `editorial/status.md` under `Processed Claude captures`.
