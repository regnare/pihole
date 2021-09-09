#/bin/bash
# Script to backup the pihole config within the docker container.

/usr/bin/docker exec -w "/teleporter" pihole pihole -a -t

# Copy files to remote location
/usr/bin/rclone copy --update --verbose --transfers 30 --checkers 8 \
  --contimeout 60s --timeout 300s --retries 3 --low-level-retries 10 --stats 1s \
  /home/ben/pihole/teleporter pihole:rclone/pihole/
