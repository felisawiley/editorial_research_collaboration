# Editorial Owner Capture Sync (Sunday 5:45 PM)

You only bridge Gmail → GitHub. No editorial review. No status merge.

**Schedule intent:** Sundays at **5:45 PM** local (before Sunday Claude’s status merge).

---

## Workflow

1. `git pull` on `felisawiley/editorial_research_collaboration` `main`
2. Read `config/editorial_preferences.md` and `editorial/status.md` (for Processed owner captures / Recent replies context only)
3. Search Gmail for threads with subject containing `Editorial Review` from the last 14 days (include Sent/Inbox as needed to find Fee’s replies)
4. For each thread, `get_thread` and find messages **from Felisa** that are replies to an Editorial Review (not the outbound review body itself)
5. For each such reply:
   - Determine the reply’s calendar date → `editorial/captures/owner/YYYY-MM-DD.md`
   - If that file already contains this reply’s full text, skip
   - Otherwise **append** (or create) the file with a clear separator, e.g.

```text
---
Reply at HH:MM (local) — Re: Editorial Review – YYYY-MM-DD
---
<full reply body>
```

   - Preserve `do not resurface: …` and `nothing` lines verbatim
6. If no new reply content to write: commit nothing; exit cleanly (optional one-line log: no new owner replies)
7. If files changed:
   - `git add editorial/captures/owner/*.md`
   - Commit: `Owner captures sync: YYYY-MM-DD`
   - `git push origin main`
   - If push is rejected because `main` moved: `git pull origin main` (merge, never reset `--hard`). **Keep both sides** of any overlapping file (append unique replies; never overwrite). Then push again.
8. Do **not** edit `editorial/status.md` Progress logs, Idea tree, or Do not resurface (Sunday Claude merges next)
9. Do **not** send the Editorial Review email
10. Optional: one-line Gmail ack on the latest reply thread: `Got it — saved to GitHub for Sunday merge.`

---

## Unattended (hard rules)

This job runs with nobody watching. Finish end-to-end.

- Timezone: America/New_York.
- Never ask a question. Never wait for confirmation.
- Gmail MCP (`gmail`) is required for the search. If there is nothing new, exit cleanly with no commit.
- Push **directly to `main`**. Never open a pull request. Never request reviewers. Never wait for Bugbot or CI.
- If `git push` is rejected because `main` moved: `git pull origin main` (merge, never reset `--hard`), keep both sides, push again.

## Rules

- Same calendar day → append into the same `YYYY-MM-DD.md`; never overwrite earlier replies
- Owner capture files are the inbox Sunday Claude reads under `captures/owner/`
- Never invent reply content
- Never open a PR
- Never ask for confirmation — finish end-to-end
