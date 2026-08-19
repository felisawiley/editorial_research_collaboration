# Product-Decision Intelligence Platform

**Status:** idea  
**First captured:** 2026-08-19  
**Last updated:** 2026-08-19

## One-liner

A platform that explains what happened, why decisions were made, and what's currently true about any product initiative—by assembling evidence from Jira, Slack, Confluence, and HubSpot into auditable decision timelines.

## The opportunity

Become the bridge between customer demand, product planning, engineering delivery, and revenue impact. A PM enters a feature, initiative, customer problem, or Jira epic (e.g., "SSO") and gets a source-linked timeline showing:

- Customer requests
- Discussions
- Formal documents
- Decisions
- Scope changes
- Engineering status
- Blockers
- Customer commitments

The key difference from search tools: **explains** rather than lists. Shows what happened, why the team decided something, what changed since, and what is currently true.

## Competitive landscape

| Competitor | What they do | Gap |
|------------|--------------|-----|
| Atlassian Rovo | AI search/summarization across Atlassian tools | Generic search, no structured decision history |
| Glean | Enterprise AI search across company systems | Horizontal search, not product-decision focused |
| HubSpot | Customer/revenue context, some AI features | CRM-centric, doesn't trace to engineering delivery |

**Defensible position:** Structured decision history and product-to-revenue traceability—not generic AI search.

## MVP / first version

**Starting point:** Jira epic as the anchor

**Data sources (phase 1):**
- Jira (epic, linked issues, comments, status changes)
- Slack (threads mentioning the epic/feature)
- Confluence (docs linked or mentioning the initiative)

**Output:** Auditable decision timeline with source links

**Phase 2 expansion:**
- HubSpot integration
- Customer commitments tied to features
- Renewal risk signals
- Pipeline connected to product initiatives

## Open questions

- [ ] What's the right query interface? Natural language? Structured epic picker?
- [ ] How to handle disambiguation when "SSO" appears in many contexts?
- [ ] What's the minimal useful timeline? How far back matters?
- [ ] How to present confidence/completeness ("we found 80% of relevant sources")?
- [ ] Pricing model: per-seat? per-query? per-integration?
- [ ] Self-hosted vs. cloud for enterprise security concerns?
- [ ] How to handle data freshness—real-time sync vs. periodic indexing?

## Progress log

**2026-08-19** — Initial capture. Concept defined: decision intelligence for B2B product teams. MVP anchored on Jira epic → timeline assembly from Jira/Slack/Confluence. HubSpot for phase 2.
