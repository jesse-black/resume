## {{ entry.main_column.splitlines()[0]|replace(" -- ", " — ")|replace("--", "—") }}
{% for line in entry.date_and_location_column.splitlines() %}
*{{ line|replace(" - ", " – ") }}*
{% endfor %}

{% for line in entry.main_column.splitlines()[1:] if line != "!!! summary" %}
{{ line|replace("    ", "") }}
{% endfor %}
