# Main interface design direction — v0 checkpoint

This document is the design checkpoint before building the browser-rendered project homepage.

## Design Read

```yaml
artifact: GitHub Pages landing page and repository front door
audience: medical researchers, clinical teachers, and Codex/Obsidian users
visual_language: medical research workbench × American football playbook
mode: greenfield
visual_variance: 5/10
motion_intensity: 3/10
information_density: 5/10
asset_dependence: 6/10
brand_fidelity: 4/10
```

## Positioning questions

- Narrative role: project introduction first, then workflow explanation, then a safe quick start.
- Viewing distance: laptop first, phone-friendly second; the main flow must remain legible at a glance.
- Visual temperature: authoritative, energetic and practical, with the focus of a medical playbook rather than the noise of a sports advertisement.
- Capacity: hero, four-step workflow, approval gates, quick-start block and current example fit in one scrollable page without hiding the operating rules.
- Metaphor: one content package is a football moving downfield; every review gate is a visible yard line, and the final human approval is the goal line.

## Design decisions

- Background: deep navy `#071722` for the hero and workflow board; chalk `#F5F1E8` for readable content sections.
- Primary accent: stadium green `#2F6B4F` for the forward drive, active workflow states and completed steps.
- Secondary accent: field amber `#E7A34A` for yard lines, review flags and human approval.
- Attention color: restrained red-orange `#D86A3A` only for blocked, missing or user-action-required states.
- Supporting color: slate blue `#B7CBD1` for evidence notes and secondary metadata; keep the main visual system within these four functional hues.
- Typography: condensed display face when available (`Arial Narrow`/`Helvetica Neue Condensed`) for short English labels and numbers; PingFang SC/Noto Sans CJK SC for Chinese interface text; monospace for status chips, paths and evidence states.
- Spacing: 8px base rhythm with larger 24/40/64px section intervals.
- Shape: squared or lightly rounded tactical-board panels, thin chalk-like borders and restrained shadows; avoid excessive pill controls and dashboard-card repetition.
- Motion: a short play-line tracing from source to release on hover or page entry; no bouncing footballs or decorative motion; honor `prefers-reduced-motion`.
- Illustration: a no-text hero illustration showing a dark field/playbook board, chalk yard lines, an orange football and a controlled drive from Obsidian source notes through Codex toward the WeChat release gate; a second companion illustration explains the beginner-safe setup and manual approval boundary.
- Flowchart: exact Chinese labels rendered as HTML/SVG, not generated inside the image.

## Football visual rules

- Use field geometry as information architecture: yard lines become section dividers, hash marks become checkpoints, and the goal line becomes the final approval boundary.
- Use play arrows to show movement, not decoration. The main arrow should move left to right: `Obsidian → Codex → QA/人工确认 → 微信公众号`.
- Represent the content package as one orange football or package token. It should remain visually secondary to the evidence and approval labels.
- Pair every energetic visual cue with a research-control cue: a flag means “needs review”, a chalk mark means “traceable evidence”, and the goal line means “user-approved for release”.
- Do not use real team logos, league marks, branded uniforms, helmet shots, stadium crowds, cheerleader imagery, aggressive mascots or collegiate lettering that harms Chinese legibility.
- Do not place Chinese article text, status wording, citations or workflow labels inside generated images. Keep them editable and auditable in HTML/SVG/Markdown.

## Suggested visual composition

```text
┌──────────────────────────────────────────────────────────────────────┐
│ HERO: dark tactical board                                             │
│ project promise        drive route: source → draft → review → goal   │
│                         line / approval                              │
├──────────────┬──────────────┬──────────────┬──────────────────────────┤
│ 01 SOURCE    │ 02 PLAY      │ 03 REVIEW    │ 04 RELEASE               │
│ Obsidian     │ Codex        │ evidence +   │ WeChat + GitHub boundary │
│ chalk note   │ play design  │ human flag   │ goal line                │
├──────────────────────────────────────────────────────────────────────┤
│ operating rules / quick start / UniPert-G2CP example                  │
└──────────────────────────────────────────────────────────────────────┘
```

The hero may feel like a playbook spread, but the lower sections should return to a quiet research-editorial layout so that the project remains usable for serious scientific work.

## Main interface sections

1. Hero: project title, one-sentence promise, preview status and primary “查看工作流” action on a dark tactical board.
2. Hero illustration: local no-text football/playbook visual with molecular and note-card details kept subtle.
3. Beginner-safe visual: independent vault → optional plugin boundary → selected notes → Codex → manual approval.
4. Workflow map: four downfield stations—Obsidian → Codex → QA/人工确认 → 微信公众号—with a separate GitHub boundary lane.
5. Operating principles: evidence, privacy, medical review, user control.
6. Quick start: choose an Obsidian source note, run a Codex prompt, create a content package.
7. Example: UniPert-G2CP article integration, clearly marked as local preview.
8. Release status: what is ready, what is blocked, and what requires user approval.

## Asset rule

The illustration is a visual cue. The flowchart, statuses, numbers, filenames and safety boundaries stay editable in HTML/SVG and Markdown.

## Checkpoint

Please confirm this revised American-football/playbook direction before the browser-rendered v0 and image-generation batch are built. The license audit and local repository preparation can continue independently; interface implementation should wait for this checkpoint.
