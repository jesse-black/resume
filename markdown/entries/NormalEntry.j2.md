## {{ entry.main_column.splitlines()[0]|replace(" -- ", " — ")|replace("--", "—") }}
{% for line in entry.date_and_location_column.splitlines() %}
{% if "github.com" in line and "|" in line %}
{% set github_parts = line.split("|", 1) %}
*[{{ github_parts[1] }}]({{ github_parts[0] }})*
{% else %}
*{{ line|replace(" - ", " – ") }}*
{% endif %}
{% endfor %}

{% for line in entry.main_column.splitlines()[1:] if line != "!!! summary" %}
{{ line|replace("    ", "") }}
{% endfor %}
