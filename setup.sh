#!/bin/bash

echo "unbinding xhci_hcd from GPU USB"
echo '0000:01:00.2' > /sys/bus/pci/drivers/xhci_hcd/unbind

echo "passing GPU USB to VFIO"
echo '0000:01:00.2' > /sys/bus/pci/drivers/vfio-pci/bind



