# =============================================================================
# Description of level 3 paranoia: Network Darkening
#   Generally 'hide' the server from the networks, only allowing specific
#       points of access by specific agents, using specific techniques
#   knock tools, no open ports
#   Clear off all ssh keys and data that tie servers to this one, to
#       avoid lillypad attacks
# =============================================================================


include:
  - security.level2
