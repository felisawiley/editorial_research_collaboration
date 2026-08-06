# Editorial Research Collaboration

High-level weekly workflow for Fee’s writing/research system.

## Who does what

```text
You reply to Monday’s email (Gmail)
        │
        ▼
Monday Cursor  ──writes──►  editorial/captures/owner/YYYY-MM-DD.md  (GitHub)
        │
        │  also emails you the Editorial Review
        │  also archives editorial/reviews/YYYY-MM-DD.md
        ▼
Sunday Claude  ──reads──►  captures/owner/ + captures/claude/
        │
        │  merges into editorial/status.md
        │  (current state + append-only Progress logs)
        │  respects "## Do not resurface"
        ▼
Next Monday Cursor  ──reads──►  status.md  →  new Editorial Review email
```

| Day | Agent | Job |
|---|---|---|
| **Monday** | Cursor | Read Sunday’s `status.md`; skeptical editorial email; **automatically push Gmail replies into `captures/owner/`**; never recommend **Do not resurface** items |
| **Sunday** | Claude | Merge owner + Claude captures into `status.md`; tag Progress logs; mark blocked follow-through; in-app digest |
| **You** | Email reply | Progress, decisions, kills, and **`do not resurface: …`** lines |

## Replies → GitHub

Replies are **not** emailed into GitHub by Gmail itself.

Monday Cursor **automatically** copies each new reply into:

`editorial/captures/owner/YYYY-MM-DD.md`

and pushes to `main`. Same calendar day → **append** into that day’s file. Sunday Claude then merges those files into `status.md`.

If Monday hasn’t run since you replied, the owner folder may still lack a new dated file — the dump happens on the Monday job (or reply-intake), not the instant you hit send in Gmail.

## Do not resurface

Monday’s email always asks: anything that should not come back?

Reply with:

`do not resurface: <full title> — reason`

or `do not resurface: nothing`

Sunday adds matches to `status.md` → **## Do not resurface**.  
Later Mondays **must not** recommend, blend, or re-open those items unless you explicitly revive them.

## Layout

```
agents/                     Agent prompts (editorial weekly, reply intake, …)
config/                     Preferences (editorial + briefing)
editorial/
  status.md                 Living baseline + Progress logs + Do not resurface
  reviews/                  Monday Editorial Review archive (YYYY-MM-DD.md)
  captures/
    owner/                  Your Gmail replies (GitHub bridge for Sunday Claude)
    claude/                 Claude conversation deltas
briefings/                  Daily briefing archive
logs/                       Feedback / watch logs
scripts/                    Local helpers
```

## Key files

- `config/editorial_preferences.md` — delivery, roster, naming, do-not-resurface rules
- `agents/editorial_weekly.md` — Monday Editorial Research Director
- `agents/editorial_reply_intake.md` — Gmail → `captures/owner/` bridge
- `editorial/captures/owner/SUNDAY_CLAUDE_ADDENDUM.md` — paste into Sunday Claude gather step

## Constraints

- Sunday owns Progress-log history (append only).
- Monday owns judgment + Gmail → `captures/owner/` + email.
- Never invent progress. Never re-surface Do not resurface items.
