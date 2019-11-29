#!/bin/bash

echo "unbinding GPU USB from VFIO"
echo '0000:01:00.2' > /sys/bus/pci/drivers/vfio-pci/unbind

echo "binding xhci_hcd to GPU USB"
echo '0000:01:00.2' > /sys/bus/pci/drivers/xhci_hcd/bind




