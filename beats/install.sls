{% set beats = salt['pillar.get']('beats:packages', []) %}

# Loop through the supported beats
{%- for current in ['filebeat', 'topbeat', 'packetbeat'] %}

{%- if current in beats %}
{{ current }}:
  pkg:
    - installed
    {%- if beats[current].version is defined %}
    - version: {{ beats[current].version }}
    {%- endif %}
{% endif %}

{% endfor %}
