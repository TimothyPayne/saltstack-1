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



# =============================================================================
# TESTING BLOCK
# Get the following working:
# =============================================================================


  'icarus':
    - batnerd
    - role.webserver


#    'athenaeum':
#    - role.ticket-tracker
#    - role.fileserver
#    - role.transcoder

# Generic
#    - security.core

