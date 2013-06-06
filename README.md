
Thoughts, questions, musings on my saltstack.


So far, with a 'service centric' method, I have come to the following
  list of 'responsibilities' for each service to maintain about itself:

  - firewall openings
  - backup settings
  - configuration files
  - the package itself
    - the apt.sources for the package, if not in main
  - special contexts, such as selinux.
    - I have not implemented this architecture yet, still noting it down


Adding a 'backup' feature.
    Each of the bottom states should contain the methods necessary for all of
    the things that affect it. For instance, I worked in the iptable rules to
    the bottom state, so that I can have the individual services can 'punch'
    holes needed to operate. This way, I can more easily see what each service
    requires individually, rather than digging through a top level state for
    the correct service.

    Taking this a step further, I would like to add backups to the bottom
    service.sls, and this further might fix the issue with SeLinux and
    such. If each service contains all of it's configuration for things
    like ACL and files to backup, at the top level it is as simple as
    saying 'services.backup' and letting each service.sls handle its
    configuration for 'doing it properly'.

    As backups are considered 'critical' to any real service level,
    I would like to add this in at an 'all' top level, and make sure
    that all services have the settings for their own backup.

    Something to consider here, is what happens when I want to use a
    different backup program. I have to be wary of changes at every
    single service if I have hardcoded it, which is something I want
    to design away from. Additionally, If each individual state
    is considered separate during the (obnam) run, it will have
    issues with 'generation' cleanups. They need to pass their
    options 'upward' toward the top level, that it is included in
    the 'entire' server backup, not added on afterward.



# Security layer idea
  New idea with the security angle: I like the idea of security levels,
  that are handled via a state, and bootstrap all prior security levels
  into a hardened machine. There is a bit of contention, about how to handle
  some of the various hardening techniques, such as selinux. Selinux
  requires configuration 'per service', which is unknown to the generic
  state file that declares the level. It would also be unweildy to handle
  the security configuration in each individual service state file. I need
  to decide how and where the security configurations will reside, and how
  to 'make them aware' of the services that are being run on that box.


I would like to have a script that turns my saltstack states into
  'readable' documentation.

# Email security
Just things for an email server, such as greylisting, tarpits, etc..


# Extra ideas
  - security.firewall <- could also 'monitor' state and re-enable it
    Thoughts on this; I could completely 'lock down' the firewall
    at the top level, and 'punch' the necessarry holes at the service
    level .sls files. This way, I have documentation at the service
    level about what is required, and it also acts as a 'whitelist'
    that will minimize the attack surface.

  - role.cloudserver <- Have capability to hook into my phone and such.
  - security.pub_keys <- Copy all keys to all servers.. when master keyring updated, "push all".state
  - security.grsecurity <- the hardened kernel.
  - monitoring.bandwidthshaper < script setup for my online hosts
  - monitoring.client
  - security.chroot <- This one I am interested in looking into

