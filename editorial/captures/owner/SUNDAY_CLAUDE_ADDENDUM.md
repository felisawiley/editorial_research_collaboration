Paste into Sunday Claude routine — run **after 5:45 PM** (after Cursor owner-capture sync has pushed).

## Also gather owner replies from GitHub
After `git pull` and reading status.md:
- List files in `captures/owner/` matching `YYYY-MM-DD.md` dated within the last 7 days, excluding `README.md` and excluding any filename already listed under **Processed owner captures**.
- Read each; skip body exactly `nothing`.
- **Priority:** owner captures outrank Claude captures on conflicts.

## Do not resurface (add + expire after one week)
If an owner capture contains lines starting with `do not resurface:` (case-insensitive) and the rest is not exactly `nothing`:
1. Ensure `## Do not resurface` and `## Permanently suppressed` exist in status.md.
2. Append under Do not resurface:
   `- <full title> — <reason> (added: YYYY-MM-DD)`
   using today’s date as `added:`. Skip if the same full title is already listed there or under Permanently suppressed.

**Expire / remove the week after:**
3. For every bullet already under `## Do not resurface` whose `added: YYYY-MM-DD` is in a **previous calendar week** (i.e. added before this Sunday’s week starts — treat “this week” as the 7 days ending today):
   - Remove that bullet from `## Do not resurface`
   - Append it under `## Permanently suppressed` with `(suppressed: YYYY-MM-DD)` = today
   - If it matches an Idea tree node or Candidate: set state to Killed / close the candidate and append `killed: do not resurface — moved to permanent suppression`
   - If it matches an active Project and owner clearly abandoned it: move entire entry to Closed with `closed: do not resurface`
4. If Monday’s follow-through target is on Do not resurface or Permanently suppressed, log `closed:` / `killed:` instead of `blocked:`.

Append processed owner filenames under **Processed owner captures** and a short dated line under **Recent replies**.
