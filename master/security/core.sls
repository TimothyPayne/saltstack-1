# =============================================================================
# Core level security lockdown: Basic intrusion points
#
#   Firewall in complete lockdown, relying on the service states to punch
#   thier own ports into iptables.
#
#   SSH configuration, to stop repeat attempts and set up key based auth.
#
#   Basic logging to a remote server, to allow me to monitor anything funky
#
#   Basic scanning enabled to look for rootkits or other malicious
#     binaries.
#     Things that are known for the defeating this: 'Veil'
# =============================================================================


include:
  - service.fail2ban


/etc/ssh/sshd_config:
  file.managed:
    - source: salt://service/ssh/sshd_config


firewall-lockdown:
  cmd.script:
    - source: salt://security/iptables-lockdown.sh


# The now apparently defunct server-shield would have made a great
  # addition here, look to find what it did and emulate it.

# ssh todo:
  # ssh keys updated, before the following (or I will lock myself out)
    # PasswordAuthentication no
    # AllowUsers deploy@(your-ip) deploy@(another-ip-if-any)
#  - service.syslog-ng
  # Needs a config file.
#  - service.rkhunter
#  - service.clamav
