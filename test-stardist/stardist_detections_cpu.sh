#!/bin/sh

## cpu
singularity run  -B /gpfs/mskmind_ess/pateld6/work/docker/qupath/data:/data,/gpfs/mskmind_ess/pateld6/work/docker/qupath/detections:/detections,/gpfs/mskmind_ess/pateld6/work/docker/qupath/models:/models,/gpfs/mskmind_ess/pateld6/work/docker/qupath/scripts:/scripts  --nv /gpfs/mskmind_ess/pateld6/work/docker/qupath/qupath-stardist_latest.sif java -Djava.awt.headless=true \
-Djava.library.path=/qupath-cpu/build/dist/QuPath-0.2.3/lib/app  \
-jar /qupath-cpu/build/dist/QuPath-0.2.3/lib/app/qupath-0.2.3.jar  \
script --image $1 $2
