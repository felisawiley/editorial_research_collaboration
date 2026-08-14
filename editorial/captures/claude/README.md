# Claude captures inbox

Claude conversation deltas land here as `YYYY-MM-DD.md`.

Sunday Claude merges new files into `status.md` **after** owner captures (run after the 5:45 PM Gmail sync). That merge also:

- appends Progress log tags
- adds new `do not resurface:` lines
- **expires** last week’s Do not resurface bullets into Permanently suppressed

Monday Cursor does **not** re-merge these; it reads the resulting status and never recommends either suppression list.

If a Claude capture and an owner capture both update the same project: Sunday **merges both** into `status.md` (nothing dropped). Same calendar day → append; do not overwrite.

See repo root `README.md` for the full Sun→Mon workflow.
