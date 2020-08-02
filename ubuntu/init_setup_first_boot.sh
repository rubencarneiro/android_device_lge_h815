#!/bin/sh

## Remount root as read/write
mount -o remount,rw /

# fix hang on lightdm
mkdir -p /run/user/32011
chown phablet /run/user/32011
chmod 0700 /run/user/32011

exit
