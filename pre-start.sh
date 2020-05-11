#!/bin/bash

# Disable transparent hugepages
echo never | sudo tee /sys/kernel/mm/transparent_hugepage/enabled

# Create system cset
sudo cset set -s system -c 0-1 -m 0

# Move existing processes to system cset
sudo cset proc -m -s root -t system -k

# Minimize vm interruptions
sudo sysctl vm.stat_interval=120
sudo sysctl -w kernel.watchdog=0

