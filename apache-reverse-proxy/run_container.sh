#!/bin/bash
# The reverse proxy is the only one available from the host -> port mapping
# Recuperates the ip adress with hardcoded names (possible to pass as parameter)
static_srv_ip_tmp=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' static-srv)
dynamic_srv_ip_tmp=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' dynamic-srv)
STATIC_SRV_URL_TMP="${static_srv_ip_tmp}:80"
DYNAMIC_SRV_URL_TMP="${dynamic_srv_ip_tmp}:3000"
docker run -e STATIC_SRV_URL="$STATIC_SRV_URL_TMP" -e DYNAMIC_SRV_URL="$DYNAMIC_SRV_URL_TMP" -p 8080:80 --name dynamic-proxy-srv proxy-dynamic-image