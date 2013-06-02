# =============================================================================
# TOR (The Onion Router): is a tool for darknet and anon clearnet access
#   where the user might feel repression of information access.
#
#   I am brave enough to run a node, but too cowardly to run an exit node
#       at this time.
#
# =============================================================================

# Need to apt-add and use the tor repo, so I actually have a 'good' version.

# Key issues??
# gpg --keyserver keys.gnupg.net --recv 886DDD89
# gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add -
# 
# apt-get install deb.torproject.org-keyring


tor:
    pkg:
        - installed
    service:
        - running
        - require:
            - pkg: tor


/etc/tor/torrc:
    file.managed:
        - source: salt://service/tor/torrc
        - owner: root
        - group: root
        - mode: 644
        - require:
            - pkg: tor


tor-iptables:
    cmd.wait_script:
        - source: salt://service/tor/tor-iptables.sh
        - watch:
            - cmd: firewall-lockdown
