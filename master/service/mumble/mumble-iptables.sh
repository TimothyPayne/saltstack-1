#!/bin/bash
iptables -I INPUT -p tcp --dport 64738 -j ACCEPT
iptables -I INPUT -p udp --dport 64738 -j ACCEPT
iptables -I OUTPUT -p tcp --sport 64738 -j ACCEPT
iptables -I OUTPUT -p udp --sport 64738 -j ACCEPT

