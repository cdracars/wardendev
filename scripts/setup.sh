#!/bin/bash

#
# Download codebase
#
git ls-remote git@github.com:teamdeeson/warden.git &> /dev/null
GIT_CHECK=$?
if [ "$?" -ne 0 ]; then
    echo "[ERROR] Unable to read from drupal7"
    exit 1
fi

if [ ! -f "phpunit.xml.dist" ]; then
    git clone https://github.com/teamdeeson/warden.git .
    mv web/app.php web/index.php
    cp .ddev/parameters.yml app/config/parameters.yml
    sudo chown -nR $(ls -dln | awk '{print $3":"$4}') warden
fi
