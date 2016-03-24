{%- for name, policy in salt["pillar.get"]("rabbitmq:policy", {}).items() %}
rabbitmq.policy.{{ name }}:
  rabbitmq_policy.present:
    - name: {{ name }}
    {{ policy|yaml(False)|indent(4) }}
    - require:
      - service: rabbitmq-server
{%- endfor %}
