# AGENTS.md

This repository contains my resume built with RenderCV.
These instructions apply to all tasks in this repository unless the user explicitly overrides them.

## Project Overview
- The source content lives in `Jesse_Black_Resume.yaml`.
- Template overrides (source) live in `engineeringclassic/` (Typst/PDF) and `markdown/` (Markdown).
- A collection of markdown notes providing background context for drafting resume sections lives in `.notes/`.
- Follow `.notes/README.md` for how notes should be interpreted and used in drafting tasks.
- Use RenderCV to render/export the resume from this YAML source.

## Notes for Agents
- Edit source files only (primarily `Jesse_Black_Resume.yaml`, plus `engineeringclassic/` and `markdown/` when adjusting layout).
- Do not edit generated outputs under `rendercv_output/`.
- Do not stage or commit files from `.notes/`.
- Keep formatting consistent with existing YAML structure.
- If you add new sections, follow the patterns already used in the YAML files.
- Always check for existing files before creating or overwriting any file.

## Validation
- Validate by rendering: `rendercv render Jesse_Black_Resume.yaml`.
- Rendering must complete successfully (exit code 0).
- Inspect the generated PDF output for layout and content correctness.
- Spot-check the generated Markdown output for obvious formatting regressions (GitHub rendering).
