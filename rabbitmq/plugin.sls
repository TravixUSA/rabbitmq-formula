{% for name, plugin in salt["pillar.get"]("rabbitmq:plugin", {}).items() %}
rabbitmq.plugin.{{ name }}:
  rabbitmq_plugin:
    - name: {{ name }}
    {% for value in plugin %}
    - {{ value }}
    {% endfor %}
    - runas: root
    - require:
      - pkg: rabbitmq.install
    - watch_in:
      - service: rabbitmq.service
{% endfor %}
