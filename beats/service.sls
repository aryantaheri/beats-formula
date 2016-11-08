# Install beats as a service
{% set beats = salt['pillar.get']('beats:packages', []) %}

# Loop through the supported beats
{%- for current in ['filebeat', 'topbeat', 'packetbeat'] %}

{%- if current in beats %}
extend:
  {{ current }}:
    service.running:
      - enable: True
      - watch:
        - pkg: {{ current }}
        - file: /etc/{{ current }}/{{ current }}.yml
      - require:
        - pkg: {{ current }}

{% endif %}

{% endfor %}
