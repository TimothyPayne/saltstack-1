#!/usr/bin/env bash

# 9091: Interface port
iptables -I INPUT -p tcp --dport 9091 -j ACCEPT
iptables -I OUTPUT -p tcp --sport 9091 -j ACCEPT

# 51413: Main torrent ports
iptables -I INPUT -p tcp --dport 51413 -j ACCEPT
iptables -I INPUT -p udp --dport 51413 -j ACCEPT
iptables -I OUTPUT -p tcp --sport 51413 -j ACCEPT
iptables -I OUTPUT -p udp --sport 51413 -j ACCEPT
