Capistrano::Ext::Foggy_Bottom
==

A gem to spinup and destroy virtual machines

Usage
--

This gem exposes the cap namespace `:foggy_bottom` with:

```bash
$ bundle exec cap -T
cap foggy_bottom:destroy         # Kill a node
cap foggy_bottom:destroy_vagrant # Destroy Vagrant box
cap foggy_bottom:spin_up         # Build out a new node
cap foggy_bottom:spin_up_vagrant # Spin up Vagrant box
```

The vanilla `:destroy` and `:spin_up` tasks determine which provider (vagrant or, later on at least, rackspace) to use based on the boolean values:

```ruby
set :vagrant, true    # Default: false
set :rackspace, true  # Default: false
```

Which I suggest setting in stage files as opposed to `deploy.rb`.

In addition vagrant takes the option:

```ruby
set :vagrantfile, File.join( File.dirname( __FILE__ ), 'deploy'
```
