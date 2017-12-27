#!/bin/bash

#generate mean files for all training sets
for ff in ../databases/*train*;
do
    echo $ff;
        ../../build/tools/compute_image_mean -backend lmdb $ff ${ff%-lmdb}-mean;
done

