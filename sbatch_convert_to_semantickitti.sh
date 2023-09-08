#!/bin/bash

#SBATCH --job-name CVT
#SBATCH --nodes=1
#SBATCH --time=100:00:00
#SBATCH --account=hpeng1

#SBATCH --partition=standard
#SBATCH --cpus-per-task=1

#SBATCH --mem-per-cpu=24g

source ~/anaconda3/etc/profile.d/conda.sh
conda activate ENV_NAME

### This is to print the host name
ipnip=$(hostname -i)
echo ipnip=$ipnip

export PYTHONPATH="${PYTHONPATH}:PATH_TO_python-sdk"

cd python-sdk/nuscenes/scripts/

# Convert the nuScenes mini dataset to the SemanticKITTI format.
python export_semantickitti.py nuscenes_gt_to_semantickitti \
--nusc_dir PATH_TO_nuscenes_mini \
--nusc_skitti_dir PATH_TO_nuscenes_mini_semantickitti

# Convert the nuScenes full dataset to the SemanticKITTI format.
python export_semantickitti.py nuscenes_gt_to_semantickitti \
--nusc_dir PATH_TO_nuscenes \
--nusc_skitti_dir PATH_TO_nuscenes_semantickitti --nusc_version v1.0-trainval