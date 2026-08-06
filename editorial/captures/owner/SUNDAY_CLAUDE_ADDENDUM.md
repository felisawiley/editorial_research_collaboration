Paste into Sunday Claude routine — run **after 5:45 PM** (after Cursor owner-capture sync has pushed).

## Also gather owner replies from GitHub
After `git pull` and reading status.md:
- List files in `captures/owner/` matching `YYYY-MM-DD.md` dated within the last 7 days, excluding `README.md` and excluding any filename already listed under **Processed owner captures**.
- Read each; skip body exactly `nothing`.
- **Priority:** owner captures outrank Claude captures on conflicts.

## Do not resurface (from owner replies)
If an owner capture contains lines starting with `do not resurface:` (case-insensitive):
1. Ensure `## Do not resurface` exists in status.md.
2. Append a bullet with the **full title** + optional reason + date.
3. Never delete prior bullets unless an owner capture explicitly resurrects that item.
4. If Monday’s follow-through target is now on Do not resurface, log `closed:` / `killed:` instead of `blocked:`.

Append processed owner filenames under **Processed owner captures** and a short dated line under **Recent replies**.
