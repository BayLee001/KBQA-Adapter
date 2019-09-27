#!/usr/bin/env bash


export CUDA_VISIBLE_DEVICES=$1
#do
for i in {0..9}
do
    python -u start.py --run train --config config/baseline-star.yml --star_model --fold $i | tee baseline-star.yml.log
    python -u start.py --run train --config config/gan-recon-all-star.yml --fold $i | tee gan.recon.all.star.yml.log
done

echo "all done!"
