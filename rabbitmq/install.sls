{% from slspath + "/map.jinja" import map with context %}

rabbitmq.install:
  pkg.installed:
    - name: {{ map.package }}
    {%- if 'version' in salt['pillar.get']('rabbitmq', {}) %}
    - version: {{ salt['pillar.get']('rabbitmq:version') }}
    {%- endif %}
