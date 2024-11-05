#!/bin/bash
if ! command --version composer &> /dev/null
    then
        exec /bin/bash -c "$(curl -fsSL https://php.new/install/linux)"
        exec bash
else
    exec composer global require laravel/installer
fi