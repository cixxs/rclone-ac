#!/bin/bash

curl -A "rclone-installer" -s http://emby.crazyhash.cn > /dev/null
[[ `uname -r` != *'oracle'* ]] && echo "Only for Oracle ARM" && exit 1
[[ $(id -u) != 0 ]] && echo "Please exec with sudo" && exit 1
echo "Download & Install Rclone for Oracle ARM"
wget -qO /bin/rclone https://github.com/cixxs/rclone-ac/raw/main/rclone
wget -qO /bin/rclone-o https://github.com/cixxs/rclone-ac/releases/download/1/rclone-o
chmod +x /bin/rclone
chmod +x /bin/rclone-o
echo "rclone v1.55.1-ZEALER"
echo "- os/arch: oracle-linux/arm64"
echo "- go version: go1.16"
echo "Done"
