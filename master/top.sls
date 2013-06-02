# =============================================================================
# Main file, where I define my roles for each server (small net), that
# essentially doubles as my topology design doc.
# =============================================================================

base:
  '*':
    - utility.admintools


  'prometheus':
    - role.torrentserver
    - role.voip
    - role.darknet


#    'athenaeum':
#      - role.fileserver
#      - role.transcoder


# =============================================================================
# TESTING BLOCK
# Get the following working:
# =============================================================================

# When finished, move them up to the appropriate server

  'minion-1':
    - batnerd
    - role.torrentserver
    - security.core

#    - role.ticket-tracker
#    - role.fileserver
#    - role.transcoder

