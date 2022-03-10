#!/bin/bash

/docker-entrypoint.sh
filebeat modules enable nginx
filebeat setup -e
service filebeat start
nginx -g 'daemon off;'