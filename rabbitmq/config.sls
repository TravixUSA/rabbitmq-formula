{%- set config = salt['pillar.get']('rabbitmq:config', False) %}
{%- if config %}
{% from slspath + "/map.jinja" import map with context %}
rabbitmq.config:
  file.managed:
    - name: {{ map.config_file }}
    - user: root
    - group: root
    - mode: 644
    - contents: {{ config  }}
{%- endif %}
