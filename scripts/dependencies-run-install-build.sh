#!/usr/bin/env bash

printf "Installing NPM dependencies for Colby dependencies \n"

shopt -s extglob # Turns on extended globbing

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# base-install
cd web/wp-content/themes/baseinstall
npm install
gulp
cd -

cd web/wp-content/themes/colby-base-theme
composer install
composer dump-autoload
npm install
npm run build:production
cd -

cd web/wp-content/themes/colby-cah-theme
composer install
composer dump-autoload
npm install
npm run build:production
cd -

# npm install
shopt -u extglob