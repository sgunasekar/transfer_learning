#!/bin/bash
#SBATCH --nodes=1
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=4
#SBATCH --mem=24G
#SBATCH --partition=sphinx
#SBATCH -t 2-0:00

# Print execute commands in the log.
set -x
conda_env=`whoami`-ue

# source scripts/copy_imagenet_local.sh
source /u/nlp/anaconda/main/anaconda3/etc/profile.d/conda.sh
conda deactivate
conda activate $conda_env
cd $PWD

eval $1

