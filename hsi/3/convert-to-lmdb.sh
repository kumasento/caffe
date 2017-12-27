#!/bin/bash

#convert all training sets to lmdb format
for ff in t*-train.dat;
do
    echo $ff;
    ../../build/tools/convert_hsi_imageset --shuffle=true ../ $ff ../databases/${ff%.dat}-lmdb;
done

#convert all test sets to lmdb format
for ff in t*-val.dat;
do
    echo $ff;
	../../build/tools/convert_hsi_imageset --shuffle=false ../ $ff ../databases/${ff%.dat}-lmdb;
done

