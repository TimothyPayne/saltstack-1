# ======================================================================
# Services required to have a fully operational base webserver.
# ======================================================================

include:
  - service.nginx
  - service.uwsgi
  - service.flask
  - service.supervisord
