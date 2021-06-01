#!/bin/bash

curl -A "rclone-installer" -s http://emby.crazyhash.cn > /dev/null
Checking=`uname -r`
if [[ $Checking != *'oracle'* ]]
then
    echo 'Only for Oracle ARM'
    exit
fi
wget -qO /bin/rclone https://github.com/cixxs/rclone-ac/raw/main/rclone
echo "Download & installing"
wget -qO /bin/rclone-o https://github.com/cixxs/rclone-ac/releases/download/1/rclone-o
chmod +x /bin/rclone
chmod +x /bin/rclone-o
echo "rclone v1.55.1-ZEALER"
echo "- os/arch: oracle-linux/arm64"
echo "- go version: go1.16"
