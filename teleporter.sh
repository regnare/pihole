#/bin/bash
# Script to backup the pihole config within the docker container.

/usr/bin/docker exec -w "/teleporter" pihole pihole -a -t
