#!/usr/bin/env python3
"""Update the generated resume block in README.md."""

from pathlib import Path


README_PATH = Path("README.md")
RESUME_MARKDOWN_PATH = Path("rendercv_output/Jesse_Black_Resume.md")
START_MARKER = "<!-- resume starts -->"
END_MARKER = "<!-- resume ends -->"


def main() -> None:
    readme = README_PATH.read_text(encoding="utf-8")
    resume_markdown = RESUME_MARKDOWN_PATH.read_text(encoding="utf-8").strip()

    start_index = readme.find(START_MARKER)
    end_index = readme.find(END_MARKER)

    if start_index == -1:
        raise SystemExit(f"Missing README marker: {START_MARKER}")
    if end_index == -1:
        raise SystemExit(f"Missing README marker: {END_MARKER}")
    if end_index <= start_index:
        raise SystemExit("README resume end marker must appear after start marker.")

    start = readme[: start_index + len(START_MARKER)].rstrip()
    end = readme[end_index:].lstrip()
    updated_readme = f"{start}\n{resume_markdown}\n\n{end}"

    if not updated_readme.endswith("\n"):
        updated_readme += "\n"

    README_PATH.write_text(updated_readme, encoding="utf-8")


if __name__ == "__main__":
    main()
