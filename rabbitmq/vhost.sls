{% for name, policy in salt["pillar.get"]("rabbitmq:vhost", {}).items() %}
rabbitmq.vhost.{{ name }}:
  rabbitmq_vhost.present:
    - name: {{ name }}
    {% for value in policy %}
    - {{ value }}
    {% endfor %}
    - require:
      - service: rabbitmq.service
{% endfor %}
