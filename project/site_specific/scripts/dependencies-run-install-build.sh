
#!/usr/bin/env bash1

printf "Installing NPM dependencies for Colby dependencies"

shopt -s extglob # Turns on extended globbing

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

printf "Build Colby Theme..."
cd web/wp-content/themes/colby-college-theme
composer install
composer dump-autoload
yarn
yarn scripts:build
cd -

# npm install
shopt -u extglob
