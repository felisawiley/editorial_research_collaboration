# Owner reply captures (Gmail → GitHub → Sunday Claude)

**Sunday 5:45 PM** Cursor job (`agents/editorial_owner_capture_sync.md`) automatically saves your email replies here as `YYYY-MM-DD.md` and pushes to `main`.

- Same calendar day → **append** into the same file
- Run Claude status merge **after** 5:45 PM so it sees this week’s replies
- Monday may also append late replies as backup

## Do not resurface lines

Reply format: `do not resurface: <full title> — reason` or `do not resurface: nothing`

Sunday Claude:

1. **This week** — adds the title under `status.md` → `## Do not resurface` with `(added: YYYY-MM-DD)`
2. **The following Sunday** — **removes** it from Do not resurface → appends `## Permanently suppressed`

Monday never recommends either list unless you explicitly resurrect an item.

See repo root `README.md` for the full workflow.
