# Paste into Sunday Claude routine — Owner captures (add under Gather)

## Also gather owner replies from GitHub
After step 3 (read status.md), also:
- List files in `captures/owner/` matching `YYYY-MM-DD.md` dated within the last 7 days, excluding `README.md` and excluding any filename already listed under **Processed owner captures** in status.md.
- Read each of those files. Skip any whose body is exactly `nothing`.

**Priority when merging:** owner captures (`captures/owner/`) outrank Claude captures (`captures/claude/`). If both touch the same project the same week, apply owner first; Claude only if it doesn’t contradict.

For each processed owner file: append the filename under **Processed owner captures** (create that section in status.md if missing). Also append a short dated line under **Recent replies**.

Owner files may be freeform (Fee’s email reply text) or structured like Claude deltas. Extract decisions, kills, clarifications, and next-move statements; append tagged Progress log lines (`continued:` / `resolved:` / `new:` / `closed:` / `killed:` / `blocked:` / `new angle:` with `parent=` or `blends with=none` when required).

Still only write `status.md` for the merge. Leave the capture files untouched.
