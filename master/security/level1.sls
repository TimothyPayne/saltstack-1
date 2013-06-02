# =============================================================================
# Description of level 1 paranoia: Application hardening
#   Selinux
#   LXC
#
# Because selinux and lxc are not 'drop in' to standard services,
#   and need to be configured, this may not be as straight forward
#   as I have it currently structured.. as the services states would
#   be unaware of these additions for the most part, and these additions
#   would grow to unweildy proportions if I tried to cover _all_ services
#   that I have in my service folder.
# =============================================================================


include:
  - security.core


selinux:
  pkg:
    - installed


lxc:
  pkg:
    - installed
