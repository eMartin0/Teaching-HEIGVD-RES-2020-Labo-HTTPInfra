#!/bin/bash
#
# helper.sh : Runs the necessary commands to deploy a reverse-proxy server
#
# authors : Jérémy Delay, Eloïse Martin
#

# Kills the container and remove the image 
docker kill dynamic-proxy-srv 2> /dev/null
docker rm dynamic-proxy-srv 2> /dev/null

# Rebuild the image and create the container
if [[ "${PWD##*/}" == "apache-reverse-proxy" ]]
then
    ./build_image.sh
    ./run_container.sh
else
    ./apache-reverse-proxy/build_image.sh
    ./apache-reverse-proxy/run_container.sh
fi
