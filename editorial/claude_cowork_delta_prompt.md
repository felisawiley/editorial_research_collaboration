# Claude — Editorial Delta

Two fully automatic landing paths (pick either):

1. **Local save + watcher (no Claude↔GitHub needed)**  
   Save `YYYY-MM-DD.md` into  
   `/Users/felisawiley/Desktop/agentic_workflows/editorial/captures/claude/`  
   Local LaunchAgent commits and pushes to `main` within ~60s.  
   Install: see `editorial/captures/claude/README.md`

2. **Claude Code routine** writes/commits/pushes the same path on `main`  
   Setup: [claude.ai/code/routines](https://claude.ai/code/routines) — prompt below

Monday’s Cursor Editorial Review reads new files from GitHub either way.

---

## Claude Code routine prompt (optional path)

```text
You are an unattended Claude Code routine. Complete the task end-to-end with no human approval.

Repo: felisawiley/editorial_research_collaboration (already checked out).
Default branch: main.

GOAL
Produce this week's editorial delta from your available Claude conversation/project context and land it on origin/main before you stop.

ACTIVE PROJECTS (named only — progress updates only for these)
- The Manufactured Agreeable Mind (research paper)
- Substack series (working title: "Manufactured/Contrarian Mind", 10 parts planned)
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
