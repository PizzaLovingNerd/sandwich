#!/bin/bash

# NOTE: Do NOT change if statement to /usr/local/bin/sandwich. This is to remove a build that was installed by an older version of the installer.
if [ -e /usr/bin/sandwich ];
then
  echo "Old build of sandwich found. Removing it ..."
  sudo rm -rf /usr/bin/sandwich
fi

echo ">>> setting up directories"
rm -rf ~/.sandwich/ # remove old config directories
sudo mkdir /usr/local/share/sandwich # create new config directory (will only show warning if it already exists)
echo ">>> copying program to /usr/local/bin"
sudo cp sandwich.py /usr/local/bin/ # copy program to PATH (will only show warning if it needs to overwrite)
echo ">>> installing"
chmod +x sandwich
sudo cp sandwich /usr/local/bin/ # copy link program to /usr/local/bin
echo ""
echo ">>> Done!"
