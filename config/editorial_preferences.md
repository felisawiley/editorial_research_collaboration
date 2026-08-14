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
- **Collisions:** merge both updates; retain all unique information (do not drop Claude because owner also wrote, or vice versa). If they contradict on owner intent, owner wins current-state fields; the other line stays in the Progress log + Open clarifications.

## Collisions (git + status)

If two updates hit the same file (owner capture + Claude capture, or `git push` rejected because `main` moved):

1. Merge **both** — union unique bullets, Progress-log lines, captures, and sections. Never pick one side or reset `--hard`.
2. Same calendar day capture file → **append**; do not overwrite earlier text.
3. True contradiction → keep both wordings in the log; current-state fields follow owner intent; flag under Open clarifications.
4. Then commit the merge and push again.

## Do not resurface

- Monday email always asks: anything to stop bringing up?
- Owner: `do not resurface: <full title> — reason` or `do not resurface: nothing`
- Sunday Claude adds to `status.md` → `## Do not resurface` with `(added: YYYY-MM-DD)`
- **The following Sunday:** remove from Do not resurface → append `## Permanently suppressed` (and kill/close the matching idea if needed)
- Mondays never recommend items on either list unless owner resurrects them

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
