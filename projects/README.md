# Projects & Ideas Tracker

Tracking system for project ideas, active work, and archived initiatives.

## Structure

```
projects/
  ideas/          New concepts, not yet committed to
  active/         Currently working on
  archived/       Completed, paused, or abandoned (with notes on why)
```

## File format

Each project gets a markdown file named `<slug>.md` with:

- **Status**: idea | exploring | active | paused | completed | abandoned
- **First captured**: date
- **Last updated**: date
- **One-liner**: what it is in a sentence
- **The opportunity**: why it matters
- **Competitive landscape**: who else, what's different
- **MVP / first version**: smallest useful thing
- **Open questions**: unknowns to resolve
- **Progress log**: dated updates

## Lifecycle

1. New idea → `ideas/<slug>.md`
2. Deciding to explore → move to `active/`, status = exploring
3. Building → status = active
4. Pausing → status = paused (keep in active/)
5. Done or killed → move to `archived/` with closing notes
