#!/bin/bash

#
# Download codebase
#
git ls-remote git@github.com:teamdeeson/warden.git &> /dev/null
GIT_CHECK=$?
if [ "$?" -ne 0 ]; then
    echo "[ERROR] Unable to read from warden"
    exit 1
fi

if [ ! -f "phpunit.xml.dist" ]; then
    git clone https://github.com/teamdeeson/warden.git
    mv warden/* .
    rm -rf warden
    mv web/app.php web/index.php
    cp .ddev/parameters.yml app/config/parameters.yml
    sudo chown -nR $(ls -dln | awk '{print $3":"$4}') .
fi
