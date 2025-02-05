#!/bin/bash

#SBATCH --job-name=domainBed_test
#SBATCH --partition=gpu
#SBATCH --gpus=1
#SBATCH --time=7500
#SBATCH --chdir=/research/labs/microbiome/chia/m214779/DomainBed/
#SBATCH --mem-per-cpu=40G
#SBATCH --output=slurm_logfiles/slurm-%j.out

nvidia-smi 

/research/labs/microbiome/chia/m214779/miniconda3/envs/drp/bin/python -m domainbed.scripts.train\
                                                                        --data_dir=/research/labs/microbiome/chia/data/herbert_domainBed/MNIST \
                                                                        --algorithm ERMAverage\
                                                                        --dataset RotatedMNIST\
                                                                        --test_env 2