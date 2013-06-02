# =============================================================================
# I2P router service:
#   Used for information that is not available on clearnet.
# =============================================================================


# apt-add-repository ppa:i2p-maintainers/i2p


# I2P node
#i2p:
#    pkg:
#        - installed
#    service:
#        - running
#        - require:
#            - pkg: i2p
# Config
# manage the config file for allowing anything in my network to 'hop on'


# Advanced config changes:
    # consolePassword='thepasswordiwant'
    # i2cp.tcp.bindAllInterfaces=true


# NOTES:
/var/lib/i2p/i2p-config/clients.config:
    file.managed:
        - source: salt://service/i2p/clients.config
        
#    clientApp.0.args=7657 ::1,127.0.0.1 ./webapps/
#    with
#    clientApp.0.args=7657 0.0.0.0 ./webapps/
#    Go to http://localhost:7657/configadvanced.jsp and add a new option: consolePassword=foo (or whatever password you want)
#    Go to http://localhost:7657/index.jsp and hit "Graceful restart", which restarts the JVM and reloads the client applications
# After that fires up, you should now be able to reach your console remotely. You will be prompted for a username and password though - the username is "admin" and the password is whatever you specified in step 2 above. Note: the 0.0.0.0 above specifies an interface, not a network or netmask. 0.0.0.0 means "bind to all interfaces", so it can be reachable on 127.0.0.1:7657 as well as any LAN/WAN IP. 


