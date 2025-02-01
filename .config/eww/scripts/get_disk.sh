#! /usr/bin/bash

df -h | grep /dev/nvme0n1p5 | awk '{print $3 "/" $2}'
