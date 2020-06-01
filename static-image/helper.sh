#!/bin/bash
#
# helper.sh : Runs the necessary commands to deploy a static server
# 
# authors : Jérémy Delay, Eloïse Martin
#

# Kills the container and remove the image 
docker kill static-srv 2> /dev/null
docker rm static-srv 2> /dev/null

# Rebuild the image and create the container
if [[ "${PWD##*/}" == "static-image" ]]
then
    ./build_image.sh
    ./run_container.sh
else
    ./static-image/build_image.sh
    ./static-image/run_container.sh
fi

docker ps
