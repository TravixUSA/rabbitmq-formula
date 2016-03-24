{% for name, policy in salt["pillar.get"]("rabbitmq:policy", {}).items() %}
rabbitmq.policy.{{ name }}:
  rabbitmq_policy.present:
    {% for value in policy %}
    - {{ value }}
    {% endfor %}
    - require:
      - service: rabbitmq-server
{% endfor %}
