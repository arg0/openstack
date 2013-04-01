#!/bin/bash

fdisk /dev/sda &>/dev/null << EOF
n
p
1
2048
+512M
n
p
2
1050624
209715199
t
2
8e
w
EOF
echo "done!"