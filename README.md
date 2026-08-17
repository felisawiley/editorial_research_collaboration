# Editorial Research Collaboration

High-level weekly workflow for Fee’s writing/research system.

## Who does what

```text
You reply to Monday’s email (Gmail) anytime during the week
        │
        ▼
Sunday 5:45 PM Cursor  ──pulls Gmail──►  editorial/captures/owner/YYYY-MM-DD.md  (push main)
        │
        ▼
Sunday (later) Claude  ──reads──►  captures/owner/ + captures/claude/
        │
        │  merges into editorial/status.md
        │  Do not resurface (1 week) → Permanently suppressed
        ▼
Monday 9:00 AM Cursor  ──reads──►  status.md  →  emails Editorial Review
        │
        └── also catches any late Gmail replies into captures/owner/ (backup)
```

| When | Who | Job |
|---|---|---|
| **Sun 5:45 PM** | Cursor | **Owner capture sync** — Gmail replies → `captures/owner/` → push |
| **Sunday (after 5:45)** | Claude | Merge owner + Claude captures into `status.md`; Progress logs; Do not resurface add/expire; digest |
| **Mon 9:00 AM** | Cursor | Editorial Review email; never recommend Do not resurface / Permanently suppressed; backup reply dump |
| **You** | Email reply | Progress, decisions, kills, `do not resurface: …` |

## Replies → GitHub

Gmail does not push by itself. **Sunday 5:45 PM** Cursor job automatically copies new replies into:

`editorial/captures/owner/YYYY-MM-DD.md`

and pushes `main` (same day → append). Run Claude’s status merge **after** that so Sunday sees this week’s replies.

Monday still dumps any stragglers as backup.

## Collisions

If two updates hit the same file (owner + Claude, or git push rejected because `main` moved): **merge both** and retain all unique information. Do not pick one side. Same-day capture files **append**. If they truly contradict, keep both lines in the log and flag under Open clarifications.

## Do not resurface

Monday’s email asks: anything that should not come back?

`do not resurface: <full title> — reason` or `do not resurface: nothing`

- **This week:** Sunday adds it to `## Do not resurface` with `(added: YYYY-MM-DD)` (Monday won’t mention it).
- **The following Sunday:** it is **removed** from Do not resurface and moved to `## Permanently suppressed` (still never recommended unless you resurrect it).

## Layout

```
agents/
  editorial_weekly.md              Monday Editorial Review
  editorial_owner_capture_sync.md  Sunday 5:45 PM Gmail → GitHub
  editorial_reply_intake.md         Shared reply-bridge rules
editorial/
  status.md                        Includes Do not resurface + Permanently suppressed
  reviews/                         Archived Monday emails
  captures/owner/                  Your Gmail replies
  captures/claude/                 Claude deltas
```

## Constraints

- Sunday Claude owns Progress-log history (append only); run it after the 5:45 PM sync.
- Never invent progress. Never recommend Do not resurface or Permanently suppressed items.
- Collisions: merge both updates; never drop one to resolve a conflict.
- Local Claude-capture watcher: LaunchAgent `com.felisawiley.claude-captures-push` runs from `~/agentic_workflows` (Desktop path is a symlink). Do not put this repo only on Desktop — macOS blocks `launchd` there.
