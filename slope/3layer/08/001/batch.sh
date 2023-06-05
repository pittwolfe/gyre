#!/bin/bash
#
#SBATCH --job-name=gyre_001
#SBATCH --output=output_%j.txt
#SBATCH --ntasks-per-node=28
#SBATCH --nodes=4
#SBATCH --time=12:00:00
#SBATCH -p long-28core
##SBATCH --nodes=8
##SBATCH --time=0:30:00
##SBATCH -p debug-28core
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=christopher.wolfe@stonybrook.edu

module load intel/compiler/64/2020/20.0.2
module load intel/mkl/64/2020/20.0.2
module load intel/mpi/64/2020/20.0.2
module load netcdf-fortran

cd $SLURM_SUBMIT_DIR
mkdir -p OUTPUT
mkdir -p RESTART
mkdir -p DIAG

date
mpirun ./MOM6
date
