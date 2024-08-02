#!/bin/bash

source <(grep RemoteHost $_CONDOR_JOB_AD | sed 's/ = /=/')

export MASTER_ADDR=`echo $RemoteHost | sed 's/.*@//'`

/gpfs/mskmind_ess/limr/mambaforge/envs/dv2/bin/python -m dinov2.train.train \
 --output-dir condor-test \
 --config-file dinov2/configs/train/vitl16_short.yaml \
 train.dataset_path=ImageNet:split=TRAIN:root=../tiny-imagenet-200:extra=../tiny-imagenet-200
