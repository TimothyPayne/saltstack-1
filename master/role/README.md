### Topology and Ideology of roles in my saltstack:

The roles are the generalized 'server description' states. They are the
equivalent of assigning a server all of the services that are needed
to perform a generic role, such as a webserver, or a logging server.

Servers with multiple roles will look like:
    include:
      - role.logging
      - role.webserver
      - role.darknet

Where the role files will contain all of the services that comprise
that role, and the services will be responsible for all of their
own context settings, to keep this level _very_ modular in design.
