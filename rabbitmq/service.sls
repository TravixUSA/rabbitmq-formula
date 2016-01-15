{% from slspath + "/map.jinja" import map with context %}

rabbitmq.service:
  service.running:
    - name: {{ map.service }}
    - enabled: True
    - require:
      - pkg: rabbitmq.install
