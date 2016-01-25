{% from slspath + "/map.jinja" import map with context %}

rabbitmq.erlang_cookie:
  file.managed:
    - name: {{ map.home_dir }}/.erlang.cookie
    - owner: {{ map.user }}
    - group: {{ map.group }}
    - mode: 600
    - contents_pillar: rabbitmq:erlang_cookie
    - contents_newline: False
