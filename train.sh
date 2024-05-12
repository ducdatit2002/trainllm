#!/bin/bash

#SBATCH --job-name=trainllm
#SBATCH --nodes=1                
#SBATCH --ntasks=4   
#SBATCH --cpus-per-task=8     
#SBATCH --mem-per-cpu=64G
#SBATCH --partition=a100 
#SBATCH --gres=gpu:2     
#SBATCH --time=2-00:00:00        
#SBATCH --output=train_%j.out  
#SBATCH --error=train_%j.err    
#SBATCH --exclusive            

module load cuda/10.2

conda activate trainllm

conda install pytorch torchvision torchaudio -c pytorch

pip install transformers datasets

pip install tiktoken

   
python main.py                  

echo "Training complete."

