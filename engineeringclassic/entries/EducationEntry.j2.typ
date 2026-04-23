{% if not design.entries.short_second_row %}
{% set first_row_lines = entry.date_and_location_column.splitlines()|length %}
{% if first_row_lines == 0 %} {% set first_row_lines = 1 %} {% endif %}
{% else %}
{% set first_row_lines = entry.main_column.splitlines()|length %}
{% endif %}
{% set has_date_column = entry.date_and_location_column.splitlines()|length > 0 %}
{% if not has_date_column %}
#block(
  width: 100%,
  breakable: {{ design.entries.allow_page_break|lower }},
  below: {{ design.sections.space_between_regular_entries }} + {{ design.typography.line_spacing }},
  inset: (
    left: {{ design.entries.side_space }},
    right: {{ design.entries.side_space }},
  ),
  [
{% if design.templates.education_entry.degree_column %}
    #grid(
      columns: ({{ design.entries.degree_width }}, 1fr),
      column-gutter: {{ design.entries.space_between_columns }},
      align: ({% if design.typography.alignment == "left-aligned" %}left{% else %}justify{% endif %}, auto),
      [
        {{ entry.degree_column|indent(8) }}
      ],
      [
{% for line in entry.main_column.splitlines()[:first_row_lines] %}
        {{ line|indent(8) }}

{% endfor %}
      ],
    )
{% else %}
{% for line in entry.main_column.splitlines()[:first_row_lines] %}
    {{ line|indent(4) }}

{% endfor %}
{% endif %}
{% if not design.entries.short_second_row %}
{% if entry.main_column.splitlines()[first_row_lines:] %}

{% if design.templates.education_entry.degree_column %}
    #block(
      inset: directional-inset(start: {{ design.entries.degree_width }} + {{ design.entries.space_between_columns }}),
      [
{% for line in entry.main_column.splitlines()[first_row_lines:] %}
        {{ line|indent(8) }}

{% endfor %}
      ],
    )
{% else %}
{% for line in entry.main_column.splitlines()[first_row_lines:] %}
    {{ line|indent(4) }}

{% endfor %}
{% endif %}
{% endif %}
{% endif %}
  ],
)
{% else %}
#education-entry(
  [
{% for line in entry.main_column.splitlines()[:first_row_lines] %}
    {{ line|indent(4) }}

{% endfor %}
  ],
  [
{% for line in entry.date_and_location_column.splitlines() %}
    {{ line|indent(4) }}

{% endfor %}
  ],
{% if design.templates.education_entry.degree_column %}
  degree-column: [
    {{ entry.degree_column|indent(4) }}
  ],
{% endif %}
{% if not design.entries.short_second_row %}
  main-column-second-row: [
{% for line in entry.main_column.splitlines()[first_row_lines:] %}
    {{ line|indent(4) }}

{% endfor %}
  ],
{% endif %}
)
{% endif %}
