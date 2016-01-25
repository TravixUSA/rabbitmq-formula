rabbitmq.erlang_cookie.file:
  file.managed:
    - name: ~rabbitmq/.erlang.cookie
    - owner: rabbitmq
    - group: rabbitmq
    - mode: 600
    - contents_pillar: rabbitmq:erlangcookie
