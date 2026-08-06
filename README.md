# editorial_research_collaboration

Shared status and capture pipeline for editorial research + daily briefing agents.

## Editorial pipeline

| When | Who | Job |
|---|---|---|
| Sunday | Claude | Merge `editorial/captures/owner/` then `editorial/captures/claude/` into `editorial/status.md` |
| Monday | Cursor | Read `status.md`, write/email Editorial Review, archive under `editorial/reviews/` |
| Anytime | Owner reply | Gmail → Monday writes `editorial/captures/owner/YYYY-MM-DD.md` → Sunday merges |

Sunday owns continuity (Progress logs, idea tree). Monday owns judgment + bridging Gmail into GitHub. Owner captures outrank Claude captures.

## Layout

```
agents/                     Agent prompts (editorial weekly, reply intake, daily briefing, …)
config/                     Preferences (editorial + briefing)
editorial/
  status.md                 Living baseline (current state + append-only Progress logs)
  reviews/                  Monday Editorial Review archive (YYYY-MM-DD.md)
  captures/
    owner/                  Owner Gmail replies (single inbox for Sunday)
    claude/                 Sunday Claude deltas
  claude_cowork_delta_prompt.md
briefings/                  Daily briefing archive
logs/                       Feedback log + local watch logs
scripts/                    Local Claude-capture push helpers
```

There is no `editorial/replies/` folder — owner replies live only in `editorial/captures/owner/`.

## Key files

- `config/editorial_preferences.md` — delivery address, project roster, naming rules
- `agents/editorial_weekly.md` — Monday Editorial Research Director
- `agents/editorial_reply_intake.md` — Gmail → `captures/owner/` bridge
- `editorial/captures/owner/SUNDAY_CLAUDE_ADDENDUM.md` — paste into Sunday Claude gather step
