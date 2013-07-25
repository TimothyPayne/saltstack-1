#!/bin/bash
lo='127.0.0.1'
lan='192.168.1.0/24'
gateway='192.168.1.1'
dhcp=$gateway
dns='208.67.222.222,208.67.220.220,8.8.8.8'
saltmaster='192.168.1.100'

# Need to handle the ip addresses and stuff in a pillar I think, to handle
# proper things like localhost ip
# Salt pillar to save the correct addresses here
# ipaddr
# wanaddr


# Flush and remove all current rules/tables, and create the proper tables
# to avoid a duplicate mess of things on state.highstate
iptables -F
iptables -X
iptables -N LOGDROP

# LOOPBACK
iptables -A INPUT -s $lo -d $lo -j ACCEPT
iptables -A OUTPUT -s $lo -d $lo -j ACCEPT

# DHCP
iptables -A INPUT -p udp --source $dhcp --sport 68 -j ACCEPT
iptables -A OUTPUT -p udp --destination $dhcp --dport 67 -j ACCEPT

# PING (In from lan only, out to everywhere)
iptables -A INPUT -p icmp --icmp-type 8 -s $lan -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT
iptables -A OUTPUT -p icmp --icmp-type 0 -s $lan -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A INPUT -p icmp --icmp-type 0 -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A OUTPUT -p icmp --icmp-type 8 -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT

# SSH (Internal only)
iptables -A INPUT -p tcp --source $lan --dport 22 -j ACCEPT
iptables -A OUTPUT -p tcp --sport 22 -m state --state ESTABLISHED -j ACCEPT

# Saltstack (Internal only)
iptables -A INPUT -m multiport -p tcp --source $saltmaster --sports 4505,4506 -j ACCEPT
iptables -A OUTPUT -p tcp --destination $saltmaster -m multiport --dports 4505,4506 -j ACCEPT

# DNS
iptables -A INPUT -p udp --source $dns --sport 53 -j ACCEPT
iptables -A OUTPUT -p udp --destination $dns --dport 53 -j ACCEPT

# APT-GET
iptables -A OUTPUT -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp --sport 80 -m state --state ESTABLISHED -j ACCEPT



# REDIRECT ALL TRAFFIC THAT DOESNT MEET THE RULES
iptables -A INPUT -j LOGDROP
iptables -A OUTPUT -j LOGDROP
# LOG/DROP ALL THE THINGS!!
iptables -A LOGDROP -j LOG --log-prefix="NET DROP: " --log-level 5
iptables -A LOGDROP -j DROP

