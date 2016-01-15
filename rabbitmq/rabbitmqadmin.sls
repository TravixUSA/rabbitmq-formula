rabbitmqadmin.install:
  file.managed:
  - name: /usr/local/sbin/rabbitmqadmin
  - source: http://localhost:15672/cli/rabbitmqadmin
  - user: root
  - group: root
  - mode: 755
  - require:
    - service: rabbitmq.service
