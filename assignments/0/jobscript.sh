#!/bin/bash -l
#
#SBATCH --nodes=1
#SBATCH --time=00:08:00
#SBATCH --job-name=pi
#SBATCH --export=NONE

unset SLURM_EXPORT_ENV

module load intel
make

srun --cpu-freq=2400000-2400000 ../utils/run.sh 10 ./benchmark.out
