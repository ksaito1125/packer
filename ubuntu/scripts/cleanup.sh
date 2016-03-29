#!/bin/sh

set -x

# minimize
apt-get autoremove
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
sync