# Paste into Sunday Claude routine — Owner captures + Do not resurface

## Also gather owner replies from GitHub
After reading status.md:
- List files in `captures/owner/` matching `YYYY-MM-DD.md` dated within the last 7 days, excluding `README.md` and excluding any filename already listed under **Processed owner captures**.
- Read each; skip body exactly `nothing`.
- **Priority:** owner captures outrank Claude captures on conflicts.

## Do not resurface (from owner replies)
If an owner capture contains one or more lines starting with `do not resurface:` (case-insensitive):
1. Ensure `## Do not resurface` exists in status.md (near Open clarifications).
2. For each item, append a bullet with the **full title** + optional reason, e.g.
   `- EU labeling as central thesis hook — disclosure ≠ friction; owner request YYYY-MM-DD`
3. Never delete prior Do not resurface bullets unless an owner capture explicitly says to resurrect that item.
4. Do not put these items into Follow-through blocked lines as if they were still active priorities; if Monday’s follow-through target is now on Do not resurface, log `closed:` / `killed:` on that project/idea instead of `blocked:`.

Also append processed owner filenames under **Processed owner captures** and a short dated line under **Recent replies**.
