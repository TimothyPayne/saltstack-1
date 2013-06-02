# Using encrypted shared data across all enterprise desktops.
# all I need to add to this is some tools to allow 'sharing' of
# processor as a ssi, and I will have completed an enterprise
# free cluster that can utilize desktops for heavy lifting.


# Requires python > 2.4 < 3.x. Recommend 2.7+ < 3.x
include:
  - require.python


tahoe-lafs:
  pkg:
    - installed
    - require:
      - pkg: python


# use tahoe archive
    # run setup.py, it will dl the files needed and setup
    # introducer.furl = in the [client] section of ~/.tahoe/tahoe.cfg. Then use "tahoe run ~/.tahoe"
    
#    A note about small grids:
#        By default, Tahoe-LAFS ships with the configuration parameter
#        shares.happy set to 7. If you are using Tahoe-LAFS on a grid with
#        fewer than 7 storage nodes, this won't work well for you -- none of
#        your uploads will succeed. To fix this, see configuration.rst to
#        learn how to set shares.happy to a more suitable value for your grid.

    
# Setting up an 'introducer'.
    # ability to set up introducers as nodes, with auto-failover?
