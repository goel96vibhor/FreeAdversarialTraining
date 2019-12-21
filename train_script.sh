#!/bin/sh
#SBATCH --job-name=Alexnet_Train

#SBATCH --output=job_output-%j.txt

#SBATCH --mail-user=goelvibhor@euler.wacc.wisc.edu

#SBATCH --time=0-23:00:00

#SBATCH --gres=gpu:v100:1


#job_name = $1
echo $1
echo $2
echo $3
echo $4
echo $5

module load cuda/9.0 groupmods/cudnn/9.2

nvidia-smi
#export PYTHONPATH="/srv/home/lianglab/rsharma/Codes-for-Lane-Detection/SCNN-Tensorflow/lane-detection-model"

#python3 main.py --resume --adv --job_name=$2 --model_name=$1 --num_epochs=$3 --num_adv_batch=$4 --weight_reg_param=$5
#python3 main.py --job_name=$2 --model_name=$1 --num_epochs=$3

#python3 main.py --resume -robust_test --job_name=$2 --model_name=$1 --attack_name="pgd" --pgd_k=$3 --pgd_eps=$4 --pgd_eps_step=$5

#python3 main.py --resume --adv -random_pat -sp_translate --job_name=$2 --model_name=$1 --num_epochs=$3 --num_adv_batch=$4 --weight_reg_param=$5 --num_pixels_changed=$6


python3 main_free.py ../DistributedTraining/data/cifar-10-batches-py/

