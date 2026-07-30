#!/bin/bash


cam_pos=$(sed -n "1p" parameters.txt)
aim_point=$(sed -n "2p" parameters.txt)
up_vector=$(sed -n "3p" parameters.txt)
fov=$(sed -n "4p" parameters.txt)
width=800
height=600
sample=1000
output="output.ppm"
depth=50
mod=0
cd ..
make
echo -e "$cam_pos\n$aim_point\n$up_vector\n$fov" | ./render $width $height $sample $output $depth $mod
