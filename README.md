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
- Start working you slacker!

__Note__:
If you have a password on your ssh keys you will need to do the below.

Add your SSH private key to the ssh-agent and store your passphrase in the keychain. If you created your key with a different name, or if you are adding an existing key that has a different name, replace id_rsa in the command with the name of your private key file.

```$ ssh-add -K ~/.ssh/id_rsa```

Also it may be needed to uncheck "Securely store Docker logins in macOS keychain" in Docker preferences.