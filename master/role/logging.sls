# =============================================================================
# Logging server role.
#   I think all of the netdrop from iptables should appear here from the
#   various servers
# =============================================================================


import:
    - service.syslog-ng
    - service.logwatch
