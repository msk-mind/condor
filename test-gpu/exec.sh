#!/bin/sh

# python venv
source /gpfs/mskmind_ess/rosed2/Hackathon/env/bin/activate

# specific version of cuda
export PATH=/usr/local/cuda-10.0/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-10.0/lib64:$LD_LIBRARY_PATH

python /gpfs/mskmind_ess/rosed2/Hackathon/gpu-test.py $1 $2

