#!/bin/bash

# Unlimit system cset
sudo cset set -s system -c 0-7 -m 0

# Restore system config
sudo sysctl vm.stat_interval=1
sudo sysctl -w kernel.watchdog=0

