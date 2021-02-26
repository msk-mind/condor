#!/bin/bash

export PATH=/usr/sbin:$PATH
sleep 10s
echo 'Date: ' `date` 
echo 'Host: ' `hostname`
echo 'System: ' `uname -spo`
echo 'GPU: ' `lspci | grep NVIDIA`
