#!/bin/bash
brctl addbr br0
ip link set dev br0 up
ip addr add 192.168.3.1/24 dev br0
