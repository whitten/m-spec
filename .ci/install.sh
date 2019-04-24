#!/bin/bash

set -e

# Install LaTeX
sudo apt install --yes --force-yes texlive texlive-latex texlive-fonts-recommend texlive-fonts-extra

# Install Pandoc (use rolling release in future?)
sudo wget "https://github.com/jgm/pandoc/releases/download/2.7.2/pandoc-2.7.2-1-amd64.deb" -O pandoc.deb
sudo apt install --yes --force-yes ./pandoc.deb

