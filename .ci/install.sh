#!/bin/bash

set -e

# Update Package List
sudo apt update

# Install LaTeX
sudo apt install --yes --force-yes texlive texlive-latex-extra --no-install-recommends

# Install Pandoc (use rolling release in future?)
sudo wget "https://github.com/jgm/pandoc/releases/download/2.7.2/pandoc-2.7.2-1-amd64.deb" -O pandoc.deb
sudo apt install --yes --force-yes ./pandoc.deb

