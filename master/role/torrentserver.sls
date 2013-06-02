# =============================================================================
# Torrentserver role:
#   A socket to which all authentic clients can schedule downloads for
#   the server to handle.
#   Purging:
#       To allow the torrents to seed appropriately, I will keep the files
#       for 90 days, after which time they will be purged by cron to
#       avoid filling up the disks with files I no longer need.
#   When I figure out the security states, I would like to add in the basic
#       security level 1
#   
# =============================================================================


include:
    - service.transmission-daemon


# Add crontab for purge of the shared folder after 90
# Manage the script


# Add shared folders
# Add fstab entries


# crontab for torrent server check
# Add check for 'running', if not, run the script that refreshes the
    # blacklists, and count. If the count is more than once run, restart the
    # machine and try again. Only restart once. If these steps do not
    # remedy, alert.
