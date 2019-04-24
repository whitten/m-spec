#!/bin/bash

set -e


# Install MiKTeX
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D6BC243565B2087BC3F897C9277A7293F59E4889
sudo apt update
sudo apt install miktex


# Install Pandoc (use rolling release in future?)
sudo wget "https://github.com/jgm/pandoc/releases/download/2.7.2/pandoc-2.7.2-1-amd64.deb" -O pandoc.deb
sudo apt install --yes --force-yes ./pandoc.deb

