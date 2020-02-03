# wardendev

This development setup has only been tested on MacOS.

## Requires: 
- [Homebrew](https://docs.brew.sh/Installation) to make below installs simpler.
- [DDEV](https://ddev.readthedocs.io/en/stable/) version 1.12.2 or higher.

## Setup:
- Create a new project directory.
- clone [fspdev](https://github.com/cdracars/wardendev) into the .ddev directory
``` git clone git@github.com:cdracars/wardendev.git .ddev```
- run `ddev rm --unlist` (_only if you had previously installed this and need to move it_)
- run `ddev start`
- After ddev has started run `ddev exec composer install`
- Start working you slacker!

__Note__:
If you have a password on your ssh keys you will need to do the below.

Add your SSH private key to the ssh-agent and store your passphrase in the keychain. If you created your key with a different name, or if you are adding an existing key that has a different name, replace id_rsa in the command with the name of your private key file.

```$ ssh-add -K ~/.ssh/id_rsa```

Also it may be needed to uncheck "Securely store Docker logins in macOS keychain" in Docker preferences.

## MongoDB:
- You can access the MongoDB Express web viewer by going to warden.ddev.site:8081
- The mongo javascript cli is installed on the mongo db container.

## Drupal Module Setup:
- add warden settings to settings.php

`$config['warden.settings']['warden_server_host_path'] = 'https://ddev-warden-web';`

`$config['warden.settings']['warden_allow_requests'] = true;`

`$config['warden.settings']['warden_public_allow_ips'] = 'SITE_IP_HERE';`

## Importing Sites:
- Add site from the drupal side (SITEURL/admin/config/system/warden)
- After adding site to warden run `ddev share` and copy the ngrok url
- Go to warden site and edit site to use the ngrok URL instead of the imported one.

__Note__:
Every `ddev share` will change the ngrok URL.
