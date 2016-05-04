{%- set beats = salt['pillar.get']('beats:packages', []) %}

# Loop through the supported beats
{%- for current in ['filebeat', 'topbeat', 'packetbeat'] %}

{%- if current in beats %}

{%- if beats[current].config is defined %}
/etc/{{ current }}/{{ current }}.yml:
  file.managed:
    - contents: |
        {{ beats[current].config|yaml(False)|indent(8) }}
{%- endif %}

{%- endif %}

{%- endfor %}
