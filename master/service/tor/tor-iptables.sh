#!/bin/bash
# Salt pillar needed for sure, this has alrady be set in more than one place.
lan='192.168.1.0/24'

# 443: Not sure?
iptables -I INPUT -p tcp --sport 443 -j ACCEPT
iptables -I OUTPUT -p tcp --dport 443 -j ACCEPT

# 9001:  ORPort (Announce port for incoming connections)
iptables -I INPUT -p tcp --dport 9001 -j ACCEPT
iptables -I INPUT -p tcp --dport 9001 -j ACCEPT
iptables -I OUTPUT -p tcp --sport 9001 -j ACCEPT
iptables -I OUTPUT -p tcp --sport 9001 -j ACCEPT

# 9030: DirPort (Directory Mirroring)
iptables -I INPUT -p tcp --dport 9030 -j ACCEPT
iptables -I OUTPUT -p tcp --sport 9030 -j ACCEPT

# 9050: Application Proxy
iptables -I INPUT -p tcp -s $lan --dport 9050 -j ACCEPT
iptables -I OUTPUT -p tcp --sport 9050 -j ACCEPT

