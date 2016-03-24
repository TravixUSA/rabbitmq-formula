{% from slspath + "/map.jinja" import map with context %}

include:
  - rabbitmq
  - .erlang_cookie

rabbitmq.cluster.join:
  rabbitmq_cluster.join:
    - user: {{ map.erlang_user }}
    - host: {{ map.erlang_master }}
    - require:
      - file: rabbitmq.erlang_cookie
      - service: rabbitmq.service
