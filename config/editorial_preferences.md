# Editorial Research Director — Preferences

Only update this file when delivery or project roster changes.

---

## Pipeline

| When | Who | Job |
|---|---|---|
| **Sunday 5:45 PM** | Cursor (`agents/editorial_owner_capture_sync.md`) | Pull Gmail `Editorial Review` replies → append `editorial/captures/owner/YYYY-MM-DD.md` → push `main` |
| **Sunday (after 5:45 PM)** | Claude routine | Merge `captures/owner/` then `captures/claude/` into `status.md`; Progress logs; Do not resurface; digest |
| **Monday 9:00 AM** | Cursor (`agents/editorial_weekly.md`) | Read `status.md`; email Editorial Review; backup dump of any late Gmail replies to `captures/owner/` |
| Anytime | You | Reply in Gmail (progress / kills / `do not resurface: …`) |

Sunday Claude should run **after** the 5:45 PM owner sync so same-week replies are on GitHub.

---

## Delivery (Monday)

- To: felisawiley@gmail.com
- Subject: `Editorial Review – YYYY-MM-DD`
- Archive: `editorial/reviews/YYYY-MM-DD.md`

## Owner reply → GitHub

- **Primary:** Sunday 5:45 PM Cursor sync (`editorial_owner_capture_sync.md`)
- **Backup:** Monday Editorial Review job
- Gmail subject contains: `Editorial Review`
- Path: `editorial/captures/owner/YYYY-MM-DD.md` (append same day)
- Sunday Claude merges into Progress logs + **Do not resurface**
- Owner outranks Claude captures

## Do not resurface

- Monday email always asks: anything to stop bringing up?
- Owner: `do not resurface: <full title> — reason` or `do not resurface: nothing`
- Sunday Claude adds to `status.md` → `## Do not resurface`
- Later Mondays never recommend those items unless owner resurrects them

## Naming (no opaque shorthand)

- Use the **full Active project title** from the roster below.
- Version labels only as a suffix — e.g. `The Manufactured Agreeable Mind (research paper) v5`
- Candidates / idea-tree nodes: full working title

## Active projects

- The Manufactured Agreeable Mind (research paper)
- Substack series (working title: "Manufactured/Contrarian Mind", 10 parts planned)
- The Contrarian (book)
- The Voiceless (book)
- Third book (title TBD)
- Standalone socio-technological essays
