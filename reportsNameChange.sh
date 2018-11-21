#!/bin/bash

# Custom script

## not needed if not transporting with scp or rsync

### user=jbuser
### server=148.62.44.100

## configure a newDist name

n=$RANDOM
useDate=$(date "+%Y-%m-%d")
useTime=$(date "+%H-%M-%S")
newDistName="dist_"$n"_"$useDate"_"$useTime

mv ~/clone/dist ~/clone/$newDistName

# mv to root
mv ~/clone/$newDistName  ~/wwwReports/$newDistName

# revise sym link with newDistName
~/bin/reportsSetSymLink.sh $newDistName


