# Decentralized-puppet
My goal is to come up with a simple decentralized puppet kicker similar to the one I use everyday at work. 

Desired functionality:

1. Write up a puppet manifest (done)

2. Modules should be included via librarian-puppet or r10k (puppetfile) (outstanding item)

3. deploy to a target, manifest runs on that target. (done)
4. Ability to do some minimal environment prep through cap3 recipes. (done, check setup rake file)

### Tasks

```bundle exec cap <stage> setup```

Setup does some basic things like an apt-get update and installing git (requirement for cap).

```bundle exec cap <stage> deploy```

deploy runs a puppet apply against ~/puppet/manifest/<stage name>.pp, and sets the modulepath to ~/puppet/modules

