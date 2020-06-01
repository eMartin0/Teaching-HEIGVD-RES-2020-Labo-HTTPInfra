#!/bin/bash
# Pas de port mapping puisque que c'est le serveur proxy qui va faire la liaison
docker run -d --name dynamic-srv http-dynamic-image
#docker run -d -p 9090:3000 --name dynamic-srv http-dynamic-image