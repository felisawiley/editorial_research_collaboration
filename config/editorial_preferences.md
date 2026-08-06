# Editorial Research Director — Preferences

Only update this file when delivery or project roster changes.

---

## Delivery

- To: felisawiley@gmail.com
- Subject: `Editorial Review – YYYY-MM-DD`
- Archive: `editorial/reviews/YYYY-MM-DD.md`

## Reply intake

- Match threads with subject containing: `Editorial Review`
- Treat the newest message from Felisa (not the automated review body) as an update
- Valid replies include deltas or the word `nothing`
- After applying an update, append acknowledgment note to that week's archive
- Owner email replies outrank all other signals

## Claude delta intake (Gmail label)

- Label display name: `Editorial/Claude-Updates`
- Label id: `Label_22`
- Match also by subject containing: `Claude Editorial Delta`
- Source: Claude Cowork scheduled task (see `editorial/claude_cowork_delta_prompt.md`)
- Apply deltas to `editorial/status.md` using the same promotion gates as Cursor chat pull
- Rank: below owner reply, above Cursor chat inference
- Track processed message ids under `Processed Claude deltas` in status

## Cursor chat pull

- Enabled: yes
- Window: since `Last chat scan` in status (fallback: 7 days)
- Named-project updates only for Active projects below
- New-idea chats → Candidate projects until promotion rules are met
- Promote to Active only when: design exists **and** domains researched
- Extract newest deltas only — no full transcript dumps

## Active projects

- The Manufactured Agreeable Mind (research paper)
- 10-part Manufactured/Contrarian Mind Substack series
- The Contrarian (book)
- The Voiceless (book)
- Third book (title TBD)
- Standalone socio-technological essays
