#!/bin/sh

# gpu
singularity run --env TF_FORCE_GPU_ALLOW_GROWTH=true,PER_PROCESS_GPU_MEMORY_FRACTION=0.8  -B /gpfs/mskmind_ess/pateld6/work/docker/qupath/data:/data,/gpfs/mskmind_ess/pateld6/work/docker/qupath/detections:/detections,/gpfs/mskmind_ess/pateld6/work/docker/qupath/models:/models,/gpfs/mskmind_ess/pateld6/work/docker/qupath/scripts:/scripts  --nv /gpfs/mskmind_ess/pateld6/work/docker/qupath/qupath-stardist_latest.sif java -Djava.awt.headless=true \
-Djava.library.path=/qupath-gpu/build/dist/QuPath-0.2.3/lib/app  \
-jar /qupath-gpu/build/dist/QuPath-0.2.3/lib/app/qupath-0.2.3.jar  \
script --image $1 $2
