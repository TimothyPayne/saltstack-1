# =============================================================================
# Transmission torrent server
#   Chosen for open codebase and magnet-uri capability.
#   Beat out Deluge torrent by memory use and stability
# =============================================================================


transmission-daemon:
    pkg:
        - installed


/etc/transmission-daemon/settings.json:
    file.managed:
        - source: salt://service/transmission-daemon/settings.json
        - user: debian-transmission
        - group: debian-transmission
        - mode: 600


transmission-iptables:
    cmd.wait_script:
        - source: salt://service/tor/transmission-iptables.sh
        - watch:
            - cmd: firewall-lockdown
