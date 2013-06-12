## Intro

This repository contains the necessary configuration to deploy an instance of
the Ganeti_Webmgr Django application.

### Requirements

- Vagrant <= 2.0.0
- Berkshelf (optional)

### Berkshelf

#### Installation and Setup:

    gem install
    berks install --path cookbooks

This will install the berkshelf gem, and then it will install all the
cookbook's required for the vagrant box to the `cookbooks` folder.

#### Issues:

There will be many issues if you decide to try to change the configuration. I
know I've run into supervisor issues with centOS based systems, which is why
this is an ubuntu box.

There is little ability to configure the setup for now, once the cookbook is
updated, this repository should see some love too.
