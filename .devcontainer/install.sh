#!/bin/bash
if ! command --version composer &> /dev/null
    then
        exec /bin/bash -c "$(curl -fsSL https://php.new/install/linux)"
        exec bash
else

    composer global require laravel/installer
    var=$(composer global config bin-dir --absolute)
    echo 'export PATH="$var:$PATH"' >> ~/.bashrc;
    source ~/.bashrc
fi