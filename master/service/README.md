### Individual Services

This is the core of the 'service centric' architectural design. Each
service is thought of as a standalone container, responsible for
all of its configuration and context settings.

The reason that I have decided to try this, is maintaining it becomes
much easier than it seems at first. It follows the standalone cloud
process mentality that new tools such as docker implement.

The admin only needs to think about and configure the service, giving
much more modularity and code re-use to the levels upward.. such as
roles.
