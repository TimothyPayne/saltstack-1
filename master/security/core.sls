# =============================================================================
# Core level security lockdown: Basic intrusion points
#
#   Firewall in complete lockdown, relying on the service states to punch
#   thier own ports into iptables.
#
#   SSH configuration, to stop repeat attempts and set up key based auth.
#
#   Basic logging to a remote server, to allow me to monitor anything funky
# =============================================================================


include:
  - service.fail2ban
  - service.syslog-ng


firewall-lockdown:
  cmd.script:
    - source: salt://security/iptables-lockdown.sh


# ssh
  # ssh keys updated, before the following (or I will lock myself out)
  # PermitRootLogin no
  # PasswordAuthentication no
  # AllowUsers deploy@(your-ip) deploy@(another-ip-if-any)

# The now apparently defunct server-shield would have made a great
  # addition here, look to find what it did and emulate it.
