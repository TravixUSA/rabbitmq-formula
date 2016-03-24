{%- from slspath + "/map.jinja" import map with context %}
rabbitmq.ssl.cert:
  file.managed:
    - name: {{ map.home_dir }}
    - user: root
    - group: root
    - mode: 644
    - contents_pillar: {{ map.pillar_ssl_cert }}

rabbitmq.ssl.key:
  file.managed:
    - name: {{ map.home_dir }}
    - user: root
    - group: root
    - mode: 644
    - contents_pillar: {{ map.pillar_ssl_key }}