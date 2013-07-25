# ======================================================================
# Redmine ticketing system
#   Using sqlite (This may change)
#   For management of projects
# ======================================================================

apache2:
  pkg:
    - installed


libapache2-mod-passenger:
  pkg:
    - installed


redmine:
  pkg:
    - installed


redmine-sqlite:
  pkg:
    - installed


/var/www/redmine:
  file.symlink:
    - target: /usr/share/redmine/public
    - require:
      - pkg: apache2
      - pkg: redmine


# Configuration files
/etc/apache2/sites-available/default:
  file.managed:
    - source: salt://service/redmine/sites-available
    - require:
      - pkg: apache2
      - pkg: redmine


/etc/apache2/mods-available/passenger.conf:
  file.managed:
    - source: salt://service/redmine/passenger.conf
    - require:
      - pkg: apache2
