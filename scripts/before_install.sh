#!/bin/bash

#give permission for everything in the server directory
DIR="/var/www/myapp/front"

#give permission for everything in the express-app directory
sudo chmod -R 777 /var/www/myapp/front

#download node and npm (version using in dev)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install v16.10

#create our working directory if it doesnt exist
if [ -d "$DIR" ]; then
  echo "${DIR} exists"
else
  echo "Creating ${DIR} directory"
  mkdir ${DIR}
fi