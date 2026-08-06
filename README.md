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
| **Monday** | Cursor | Read Sunday’s `status.md`; skeptical editorial email; **push any new Gmail replies into `captures/owner/`**; never recommend items on **Do not resurface** |
| **Sunday** | Claude | Merge owner + Claude captures into `status.md`; tag Progress logs; mark blocked follow-through; in-app digest |
| **You** | Email reply | Progress, decisions, kills, and **“do not resurface: …”** lines |

## Replies → GitHub (important)

Replies are **not** emailed into GitHub by Gmail itself.

Monday Cursor **automatically** copies each new reply into:

`editorial/captures/owner/YYYY-MM-DD.md`

and pushes to `main`. Same calendar day → same file (append more replies that day). Sunday Claude then merges those files into `status.md`.

If Monday hasn’t run since you replied, the owner folder may still be empty — the dump happens on the Monday job (or a reply-intake run), not the instant you hit send.

## Do not resurface

Monday’s email asks: anything that should not come back?

Reply with lines like:

`do not resurface: EU labeling as central thesis hook — reason`

Sunday merges those into `status.md` → **## Do not resurface**.  
Later Mondays **must not** recommend, blend, or re-open those items unless you explicitly revive them.

## Key paths

| Path | Purpose |
|---|---|
| `editorial/status.md` | Living current state + Progress logs + Do not resurface |
| `editorial/captures/owner/` | Your email replies (GitHub bridge for Claude) |
| `editorial/captures/claude/` | Claude conversation deltas |
| `editorial/reviews/` | Sent Monday Editorial Review emails |
| `agents/editorial_weekly.md` | Monday Cursor instructions |
| `config/editorial_preferences.md` | Pipeline + naming rules |

## Constraints

- Sunday owns Progress-log history (append only).
- Monday owns judgment + Gmail → `captures/owner/` + email.
- Never invent progress. Never re-surface Do not resurface items.
