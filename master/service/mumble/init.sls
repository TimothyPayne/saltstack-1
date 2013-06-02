mumble-server:
  pkg:
    - installed


/etc/mumble-server.ini:
  file.managed:
    - source: salt://service/mumble/mumble-server.ini
    - owner: root
    - group: mumble-server
    - mode: 640
    - require:
      - pkg: mumble-server


mumble-iptables:
  cmd.wait_script:
    - source: salt://service/mumble/mumble-iptables.sh
    - watch:
      - cmd: firewall-lockdown
