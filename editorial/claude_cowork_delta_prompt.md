# Claude Code Routine — Editorial Delta (fully automatic)

**No manual steps.** This routine writes, commits, and pushes the weekly Claude delta to `main`.

Create at: [claude.ai/code/routines](https://claude.ai/code/routines)  
Or in Claude Code CLI: `/schedule`

| Field | Value |
|---|---|
| Name | Editorial Claude Delta |
| Repo | `felisawiley/editorial_research_collaboration` |
| Schedule | Weekly, Sundays ~8:00 PM (local) |
| Trigger | Scheduled only |
| Connectors | Only what you need for chat/project context; GitHub via the repo attachment is enough for write/commit |
| Network | Default / Trusted is fine |

`main` is **not** branch-protected on this repo, so the routine can push directly.

---

## Routine prompt (paste into the routine exactly)

```text
You are an unattended Claude Code routine. Complete the task end-to-end with no human approval.

Repo: felisawiley/editorial_research_collaboration (already checked out).
Default branch: main.

GOAL
Produce this week's editorial delta from your available Claude conversation/project context and land it on origin/main before you stop.

ACTIVE PROJECTS (named only — progress updates only for these)
- The Manufactured Agreeable Mind (research paper)
- 10-part Manufactured/Contrarian Mind Substack series
- The Contrarian (book)
- The Voiceless (book)
- Third book (title TBD)
- Standalone socio-technological essays

STEPS
1. Read editorial/status.md and the newest file(s) in editorial/captures/claude/ (ignore README).
2. Using recent Claude conversation/project context available to you since the last capture (or last 7 days), extract ONLY the newest material deltas for the named projects:
   - status change, decision, draft/section advanced, kill/defer/merge, new open question
3. New intellectual projects/essay theses not in the list go under Candidates only.
   Promote to Active ONLY if BOTH are true: clear design/thesis exists AND domains have been researched.
4. Ignore tooling chatter, restated known status, and full transcript dumps.
5. Write the file:
   editorial/captures/claude/YYYY-MM-DD.md
   (use today's date; overwrite if the same date already exists)

FILE CONTENTS (exact structure)
# Claude Editorial Delta – YYYY-MM-DD

## Named project updates
- [Project]: [one-line newest delta]
(or: none)

## Candidates
- [Working title]: thesis=…; design=yes/no; domains researched=…/none; signal=…
(or: none)

## Promotions (only if design + domains researched)
- [Title]: promoting because …
(or: none)

## Kills / deferrals
- …
(or: none)

If nothing material changed, the file body must be exactly:
nothing

GIT (required — do not stop at a PR)
1. Stage only editorial/captures/claude/YYYY-MM-DD.md
2. Commit message: Claude editorial delta: YYYY-MM-DD
3. Push DIRECTLY to origin/main (not a claude/ branch, not a pull request, not draft).
4. Verify the file exists on origin/main (git fetch && git show origin/main:editorial/captures/claude/YYYY-MM-DD.md).
5. Only then finish.

CONSTRAINTS
- Do not edit editorial/status.md (Monday's Cursor agent does that).
- Do not email anyone.
- Do not open a PR.
- Do not ask for confirmation.
- Do not invent project progress.
```

---

## After you create it

1. Click **Run now** once to verify a file appears on `main` under `editorial/captures/claude/`.
2. Leave it on the Sunday schedule.
3. Monday’s Cursor Editorial Review will auto-read new capture files — no paste, no download.
