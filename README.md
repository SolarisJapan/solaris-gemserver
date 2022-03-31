# Solaris Gemserver :gem:

Private gem hosting powered by [Gem in a Box](https://github.com/geminabox/geminabox).

## Usage

1. Specify ``auth_username`` and ``auth_password`` ENV variables.
2. ``foreman start`` or ``rackup``
3. Add ``source 'https://username:password@gems.example.com'`` to your Gemfile.

## Pushing Gems

Since version 0.10, Geminabox supports the standard gemcutter push API:

    gem push pkg/my-awesome-gem-1.0.gem --host HOST

You can also use the gem plugin:

    gem install geminabox

    gem inabox pkg/my-awesome-gem-1.0.gem

Configure Gem in a box (interactive prompt to specify where to upload to):

    gem inabox -c

Change the host to upload to:

    gem inabox -g HOST

## Deploying Solaris Gemserver

The Solaris Gemserver is deployed with Dokku. Add a git remote for Dokku.
```
git remote add dokku dokku@45.55.175.183:gems.slrs.io
```

To deploy an update, simply push the updated branch to the dokku host. This step requires ssh access to the dokku user on the target host.
```
git push dokku master
```
