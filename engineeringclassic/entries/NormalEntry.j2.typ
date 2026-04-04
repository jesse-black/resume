{% if not design.entries.short_second_row %}
{% set first_row_lines = entry.date_and_location_column.splitlines()|length %}
{% if first_row_lines == 0 %} {% set first_row_lines = 1 %} {% endif %}
{% else %}
{% set first_row_lines = entry.main_column.splitlines()|length %}
{% endif %}
#regular-entry(
  [
{% for line in entry.main_column.splitlines()[:first_row_lines] %}
    {{ line|indent(4) }}

{% endfor %}
  ],
  [
{% if "github.com" in entry.date_and_location_column and "#link(" in entry.date_and_location_column %}
{% set github_url = entry.date_and_location_column.split('#link("', 1)[1].split('")', 1)[0] %}
{% set github_label = entry.date_and_location_column.split(')[', 1)[1].rsplit(']', 1)[0] %}
    #link("{{ github_url }}", icon: false, if-underline: false, if-color: true)[#connection-with-icon("github")[{{ github_label }}]]

{% else %}
{% for line in entry.date_and_location_column.splitlines() %}
{% if "github.com" in line and "#link(" in line %}
    {{ line|replace('if-color: false', 'if-color: true')|indent(4) }}

{% else %}
    {{ line|indent(4) }}

{% endif %}
{% endfor %}
{% endif %}
  ],
{% if not design.entries.short_second_row %}
  main-column-second-row: [
{% for line in entry.main_column.splitlines()[first_row_lines:] %}
    {{ line|indent(4) }}

{% endfor %}
  ],
{% endif %}
)
