# About This Resume

This repo is my resume, built as code. The goal is fast iteration with a clean separation between content and formatting, plus a durable history of changes over time.

## Resume as Code
- The source of truth is `Jesse_Black_Resume.yaml`.
- Outputs (PDF/Typst/Markdown) are generated from that YAML using RenderCV.
- Changes are tracked in git so edits are reviewable, reversible, and easy to revisit later.
- Releases can be tagged to create explicit resume versions (e.g., `resume-v2026.02.rev2`) tied to a point-in-time snapshot.
- RenderCV overview: https://rendercv.com/introducing-rendercv/

## Revisit Past Versions
- Git history provides an automatic timeline of edits.
- Tags make it easy to reference a specific resume version used for a given application or time period.
- Prior resumes become searchable examples when rewriting sections or re-targeting roles.

## Multiple Targets
- PDF output is the canonical “send to hiring managers” format.
- Markdown output is useful for quick reading, diffing, and GitHub rendering (including repo front pages).

## Portable Dev Environment
- This repo is set up to work well in a Dev Container so tooling is consistent everywhere.
- GitHub Codespaces lets me edit from anywhere in a pre-configured environment.
- Dev Containers also provide a convenient sandbox for agentic workflows (repeatable, isolated, and safer to automate).

## Content vs Formatting
- Content stays in YAML; formatting stays in templates.
- When I need layout or formatting adjustments, I use RenderCV template overrides rather than manually editing generated output.

## Using AI Agents
I use AI coding/writing agents as an accelerator, with the repo as a shared workspace:
- Brainstorm and refine bullet phrasing quickly.
- Use an AI agent as a writing partner to bounce ideas off and iterate on phrasing and structure.
- Tune layout to hit page-count targets (e.g., keeping Skills to single lines).
- Customize formatting via template overrides when needed.

## Obsidian Notes for Context
This repo includes a `.notes/` directory that acts as drafting context for the resume:
- It is mounted from my Obsidian notes workflow.
- I draft brainstorming notes via Obsidian, and clip job postings and research via Obsidian Web Clipper.
- This provides the AI agent richer context for its tasks.
- `.notes/` is private working material and is not intended to be published or committed as part of the resume itself.
