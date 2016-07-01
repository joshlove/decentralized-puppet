# Decentralized-puppet
My goal is to come up with a simple decentralized puppet kicker similar to the one I use everyday at work. 

Desired functionality:

1. Write up a puppet manifest

2. Modules should be included via librarian-puppet or r10k (puppetfile)

3. deploy to a target, manifest runs on that target.
4. Ability to do some minimal environment prep through cap3 recipes.

### Tasks

```bundle exec cap <stage> setup```

Setup does some basic things like an apt-get update and installing git (requirement for cap).


### Todo

Setup tasks: install config mgmt tool (chef, puppet) based on config value. All other server config should happen in your tool of choice.
