#!/bin/bash

REPO_URL="https://github.com/marzz-lab/biji-kedelai/blob/615c5858cec44b0b76d9a6ef36316ba649d7a004/nebulaptero.zip"
cd /var/www
wget "$REPO_URL"
sudo mv "nebulaptero.zip" /var/www/
unzip -o /var/www/nebulaptero.zip -d /var/www/
cd /var/www/pterodactyl && blueprint -install nebula
cd /var/www/ && rm -r nebulaptero.zip
cd /var/www/pterodactyl && rm -r nebula.blueprint
echo "NEBULA THEME BERHASIL DI INSTALL"