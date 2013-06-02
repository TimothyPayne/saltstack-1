# State file for instant setup of a tahoe-lafs node for data storage.

# Terminology
    # Introducer - The server that nodes comm with
    # node - a place where data is stored
    

# Create a tahoe-lafs unpriveledged user
    # adduser --quiet --system --disabled-password --home /var/lib/tahoe --shell /bin/sh --group tahoe-daemon

# su tahoe-daemon
# $ /opt/allmydata-tahoe-x.y.z/bin/tahoe create-node $HOME

# /etc/config.file
    # [node]
    # nickname = $HOSTNAME

    # Get the introducer url, saved in saltstack?
    # introducer.furl = pb://piqnxz5dsfkjbs3454cf4gvczu@123.123.123.123:56789/introducer
