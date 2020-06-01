#!/bin/bash
# Pas de port mapping puisque que c'est le serveur proxy qui va faire la liaison
docker run -d --name static-srv http-static-image