#!/bin/bash

#SBATCH --job-name=train.sh
#SBATCH --nodes=1                
#SBATCH --ntasks=4   
#SBATCH --cpus-per-task=8     
#SBATCH --mem-per-cpu=64G
#SBATCH --partition=gtx1080 
#SBATCH --gres=gpu:4      
#SBATCH --time=2-00:00:00        
#SBATCH --output=train_%j.out  
#SBATCH --error=train_%j.err    
#SBATCH --exclusive            

module load cuda/10.2           
   
python main.py                  

echo "Training complete."

