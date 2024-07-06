#!/bin/sh
# Copyright (c) 2018-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

python3 reconstruction.py \
       -file "wordnet/pdb_rmsd.csv" \
       -workers 1 \
       -sample 12
       #-similarity \ is set to False by default, so we're using dissimilarity