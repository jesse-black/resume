# About This Resume

I put my resume on GitHub so I can focus on the words, let RenderCV handle the typography, and end up with something that looks far better than it has any right to.

## Resume as Code
- [RenderCV](https://rendercv.com/) generates the resume from YAML.
- Changes live in git, so the history doubles as a timeline of edits.
- Tags make it easy to point back to the exact version used for a specific application or time period.
- Older versions are still useful when I want to reuse or rework past phrasing.

## Structure and Output
- The source of truth is [`Jesse_Black_Resume.yaml`](Jesse_Black_Resume.yaml).
- [PDF output](Jesse_Black_Resume.pdf) is the canonical resume format.
- [Markdown output](README.md) gives the repo a readable front page on GitHub.
- Content stays in YAML; formatting stays in templates.
- When I need layout tweaks, I change the RenderCV template overrides instead of touching generated output by hand.

## Drafting Workflow
I use AI coding and writing agents as drafting tools, with the repo as a shared workspace:
- They help me brainstorm, rewrite, and tighten bullet phrasing.
- They are also handy for layout tuning when I need to make the content fit cleanly on the page.
- The `.notes/` directory gives them better context through brainstorming notes and supporting research from my Obsidian workflow.
