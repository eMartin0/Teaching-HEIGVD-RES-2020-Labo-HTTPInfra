#!/bin/bash
#
# helper.sh : Runs the necessary commands to deploy a dynamic server
#
# authors : Jérémy Delay, Eloïse Martin
#

# Kills the container and remove the image 
docker kill dynamic-srv 2> /dev/null
docker rm dynamic-srv 2> /dev/null

# Rebuild the image and create the container
if [[ "${PWD##*/}" == "dynamic-image" ]]
then
    ./build_image.sh
    ./run_container.sh
else
    ./dynamic-image/build_image.sh
    ./dynamic-image/run_container.sh
fi

docker ps
