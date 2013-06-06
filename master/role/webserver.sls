# ======================================================================
# Services required to have a fully operational base webserver.
#   As this will be a public facing endeavor, I will also need to
#   add the basic security modules, and work them to be a little
#   more 'saltstack friendly' in terms of my architecture layout.
# ======================================================================

# Not really needed level2 yet, just testing my settings
include:
  - security.level2
  - service.nginx
  - service.flask
  - service.uwsgi
  - service.supervisor
