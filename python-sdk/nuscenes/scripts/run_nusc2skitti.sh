#!/bin/bash

# Convert the nuScenes mini dataset to the SemanticKITTI format.
python export_semantickitti.py nuscenes_gt_to_semantickitti \
--nusc_dir PATH_TO_nuscenes_mini \
--nusc_skitti_dir PATH_TO_nuscenes_mini_semantickitti

# Convert the nuScenes full dataset to the SemanticKITTI format.
python export_semantickitti.py nuscenes_gt_to_semantickitti \
--nusc_dir PATH_TO_nuscenes \
--nusc_skitti_dir PATH_TO_nuscenes_semantickitti --nusc_version v1.0-trainval