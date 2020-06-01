#!/bin/bash
#
# helper.sh : Runs the 3 scripts necessary to deploy a static server,
#             a dynamic server and a reverse-proxy server
# authors : Jérémy Delay, Eloïse Martin
#

if [[ "$1" == "run" ]]
then
    # Run the scripts in the correct order (static and dynamic does not matter) but
    # the last one should be the proxy
    # Build and run the static server
    ./static-image/helper.sh
    # Build and run the static server
    ./dynamic-image/helper.sh
    # Build and run the static server
    ./apache-reverse-proxy/helper.sh
fi

if [[ "$1" == "kill" ]]
then
    docker kill static-srv dynamic-srv dynamic-proxy-srv
fi
