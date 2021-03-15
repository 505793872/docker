#!/bin/bash

# Install docker-compose
# Run this command to download the current stable release of Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.28.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Apply executable permissions to the binary
sudo chmod +x /usr/local/bin/docker-compose

#  create a symbolic link to /usr/bin
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# Command-line completion for the bash
sudo curl \
     -L https://raw.githubusercontent.com/docker/compose/1.28.5/contrib/completion/bash/docker-compose \
     -o /etc/bash_completion.d/docker-compose
