# =============================================================================
# Look into the GUI, since these are headless machines, I may be able
# to install it on an 'admin client' instead.
#
# Make sure the config file you are currently saving actually matches samba4
# =============================================================================


# Using samba4 for all the new hotness!
samba4:
  pkg:
    - installed


# Configuration
/etc/samba/smb.conf:
   file.managed:
     - source: salt://services/samba/smb.conf
     - user: root
     - group: root
     - mode: 644

# Punch firewall port
