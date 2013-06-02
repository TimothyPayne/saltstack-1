# =============================================================================
# Service for backing up data using btrees.
#   Extremely space efficient (dedup)
#   Each iteration looks like a 'full' backup, but only using deltas
# =============================================================================


obnam:
    pkg:
        - installed


#/etc/obnam:
#    file.managed:
#        - source: salt://service/obnam/config.file
