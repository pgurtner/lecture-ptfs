#!/bin/bash -l
#
#SBATCH --nodes=1
#SBATCH --time=00:08:00
#SBATCH --job-name=pi
#SBATCH --export=NONE

unset SLURM_EXPORT_ENV

module load intel
make

./benchmark
