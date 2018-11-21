#!/bin/bash

cd ~/wwwReports

OLD_DIST=`readlink dist`
NEW_DIST=$1

if [ ! -d "$NEW_DIST" ]
  then
    exit 1
fi

ln -s -f -T $NEW_DIST dist

if [ -d "$OLD_DIST" ]
  then
    rm -rf $OLD_DIST
fi
