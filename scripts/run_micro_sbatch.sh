#!/bin/bash
#SBATCH --nodes=1
#SBATCH --gres=gpu:0
#SBATCH --cpus-per-task=2
#SBATCH --mem=2G
#SBATCH --exclude=jagupard[10-11,17]

# Print execute commands in the log.
set -x
conda_env=`whoami`-ue

# source scripts/copy_imagenet_local.sh
source /u/nlp/anaconda/main/anaconda3/etc/profile.d/conda.sh
conda deactivate
conda activate $conda_env
cd $PWD

eval $1

