#!/bin/bash

pvcreate /dev/sda2
pvs
vgcreate lbs /dev/sda2
vgs
lvcreate -C y -L 12G lbs -n lvswap
lvcreate -L 87.49G lbs -n lvroot
vgchange -a y
mkfs.ext4 /dev/sda1
mkfs.ext4 /dev/mapper/lbs-lvroot
mkswap /dev/mapper/lbs-lvswap