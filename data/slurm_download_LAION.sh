#!/bin/bash
#SBATCH --ntasks=40
#SBATCH --cpus-per-task=1
#SBATCH --time=6-00:00:00
#SBATCH --account=def-t55wang

img2dataset --url_list laion400m-meta --input_format "parquet"\
         --url_col "URL" --caption_col "TEXT" --output_format webdataset\
           --output_folder laion400m-data --processes_count 40 --thread_count 128 --image_size 256\
             --save_additional_columns '["NSFW","similarity","LICENSE"]' --enable_wandb True