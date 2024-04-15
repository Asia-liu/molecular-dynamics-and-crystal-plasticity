#!/bin/bash
#SBATCH -p G1Part_sce
#SBATCH -N 1
#SBATCH -n 2

source /es01/paratera/parasoft/module.sh
module load mpi/intel/18
export PATH=/es01/paratera/sce3063/lammps/lammps-2Aug2023/src:$PATH
mpirun -np 2 lmp_intel_cpu_intelmpi -in i.gsf
