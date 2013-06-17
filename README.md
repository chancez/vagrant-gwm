## Intro

This repository contains the necessary configuration to deploy an instance of
the Ganeti_Webmgr Django application.

### Requirements

- Vagrant should work with any version. There is configuration for both v1 and
  v2 configs
- Berkshelf (optional)


### Berkshelf

#### Installation and Setup:

    gem install
    # If vagrant < 1.1.0
    berks install --path cookbooks
    # If vagrant >= 1.1.0
    vagrant plugin install vagrant-berkshelf


This will install the berkshelf gem, and then it will install all the
cookbook's required for the vagrant box to the `cookbooks` folder. Or, if your
running a newer version of Vagrant, it will use the vagrant-berkshelf plugin
and do this automatically.

If you do not want to use berkshelf, then you will have to install the
cookbooks manually.

#### Issues:

There will be many issues if you decide to try to change the configuration. I
know I've run into supervisor issues with centOS based systems, which is why
this is an ubuntu box.

There is little ability to configure the setup for now, once the cookbook is
updated, this repository should see some love too.
