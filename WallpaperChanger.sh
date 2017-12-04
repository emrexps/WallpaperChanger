#!/bin/bash

NUMARGS=1
ENOARGS=100
ERARGS=1001

WALLLPAPERS=$1
if [ $# -ne "$NUMARGS" ]
then
   echo "Usage is './WallpaperChanger <folder>' "
   exit $ENOARGS;
elif [  ! -d "$1"  ]
    then 
       echo "Given argument is not a directory!"
      exit $ERARGS;
else

cd $WALLS_PATH 
while [ 1 ]; do
	    for NEW_WALLPAPER in "$WALLLPAPERS"/*; do
		            gsettings set org.gnome.desktop.background picture-uri "file://${NEW_WALLPAPER}"
			            sleep 5
				        done
				done
fi







