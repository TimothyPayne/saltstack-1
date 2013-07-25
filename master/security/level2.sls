# =============================================================================
# Description of level 2 paranoia: Darken Network
#   Generally 'hide' the server from the networks, only allowing specific
#       points of access by specific agents, using specific techniques
#   knock tools, no open ports
#   Clear off all ssh keys and data that tie servers to this one, to
#       avoid lillypad attacks
#
# Addition of external access requirements, such as 2 factor auth
# =============================================================================


# 2 factor auth work
# http://scottlinux.com/2013/06/02/use-google-authenticator-for-two-factor-ssh-authentication-in-linux/


include:
  - security.level1
#  - service.knockd
#  - service.google2factor
