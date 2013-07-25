# ======================================================================
# Administrative tools that I put on most servers.
# ======================================================================

# STAT TOOLS
vnstat:
  pkg:
    - installed


# BACKUP TOOLS
obnam:
  pkg:
    - installed


#sysklogd:
#    pkg:
#        - installed
#    /etc/config:
#        file.managed:
#            settings that point to the logging server (should be the local master?)
