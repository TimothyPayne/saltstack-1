# =============================================================================
# Service for backing up data using btrees.
#   Extremely space efficient (dedup)
#   Each iteration looks like a 'full' backup, but only using deltas
# =============================================================================

# Use external repo!
#  http://ppa.launchpad.net/chris-bigballofwax/obnam-ppa/ubuntu

#  deb http://ppa.launchpad.net/chris-bigballofwax/obnam-ppa/ubuntu precise main
#  deb-src http://ppa.launchpad.net/chris-bigballofwax/obnam-ppa/ubuntu precise main

obnam:
  pkg:
    - installed

# Use a config file?
#/etc/obnam/config:
#  file.managed:
#    - source: salt://service/obnam/config.file
