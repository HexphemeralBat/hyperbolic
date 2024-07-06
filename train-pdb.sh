#!/bin/sh
# Copyright (c) 2018-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

python3 embed.py \
       -dim 3 \
       -lr 0.3 \
       -lr_type scale \
       -epochs 200 \
       -negs 100 \
       -burnin 100 \
       -burnin_multiplier 0.1 \
       -ndproc 4 \
       -model distance \
       -manifold poincare \
       -dset wordnet/pdb25_rand1_rmsd.csv \
       -checkpoint RUNS/pdb25_rand1_poincare_1_scale.pth \
       -batchsize 100 \
       -eval_each 1 \
       -sym \
       -fresh \
       -sparse \
       -train_threads 5
       #-similarity \ is set to False by default, so we're using dissimilarity
       #-sym \ sets to True the symmetrize option inside load_edge_list, which is good