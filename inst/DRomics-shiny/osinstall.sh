#!/bin/bash

DIST_ID=$(lsb_release -is | tr '[:upper:]' '[:lower:]')
DIST_CODENAME=$(lsb_release -cs)
PACKAGE_LIST="osinstall-${DIST_ID}.list"

if [[ $DIST_ID == "ubuntu" || $DIST_ID == "debian" ]]; then
    apt-get -y --no-install-recommends install `cat $PACKAGE_LIST | tr '\n' ' '`
else 
  exit 1
fi

