{%- from slspath + "/map.jinja" import map with context %}
rabbitmq.ssl.cacert:
  file.managed:
    - name: {{ map.home_dir }}/cacert.pem
    - user: root
    - group: root
    - mode: 644
    - contents_pillar: {{ map.pillar_ssl_cacert }}

rabbitmq.ssl.cert:
  file.managed:
    - name: {{ map.home_dir }}/cert.pem
    - user: root
    - group: root
    - mode: 644
    - contents_pillar: {{ map.pillar_ssl_cert }}

rabbitmq.ssl.key:
  file.managed:
    - name: {{ map.home_dir }}/key.pem
    - user: root
    - group: root
    - mode: 644
    - contents_pillar: {{ map.pillar_ssl_key }}
