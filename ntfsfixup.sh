#!/bin/bash
for dev in $(mount | grep fuseblk.*\(ro | cut -d" " -f1)
do
  echo $dev
  ntfsfix "${dev}"
done
for dev in $(mount | grep fuseblk.*\(ro | cut -d" " -f3)
do
  echo $dev
  umount "${dev}"
done
mount -a
