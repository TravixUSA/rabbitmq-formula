include:
  - .vhost

{% for name, user in salt["pillar.get"]("rabbitmq:user", {}).items() %}
rabbitmq.user.{{ name }}:
  rabbitmq_user.present:
    - name: {{ name }}
    {% for value in user %}
    - {{ value }}
    {% endfor %}
    - require:
      - service: rabbitmq.service
      - sls: rabbitmq.vhost
{% endfor %}
