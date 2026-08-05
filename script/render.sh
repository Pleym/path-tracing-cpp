#!/bin/bash

test_verbose=false

while getopts "t" opt; do
    case "$opt" in
        t) test_verbose=true ;;
        *) echo "Unknown option: $opt"; exit 1 ;;
    esac
done

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
root_dir=$(dirname "$script_dir")
params="$script_dir/parameters.txt"

cam_pos=$(sed -n "1p" parameters.txt)
aim_point=$(sed -n "2p" parameters.txt)
up_vector=$(sed -n "3p" parameters.txt)
fov=$(sed -n "4p" parameters.txt)
width=800
height=600
sample=10
output="output.ppm"
depth=50
mod=0



cmake -S "$root_dir" -B "$root_dir/build" -DBUILD_TESTING=ON
cmake --build "$root_dir/build"

if [ "$test_verbose" = true ]; then
    binary="$root_dir/build/unit_tests"
else
    binary="$root_dir/build/render"
fi

printf '%s\n%s\n%s\n%s\n' "$cam_pos" "$aim_point" "$up_vector" "$fov" \
    | "$binary" "$width" "$height" "$sample" "$output" "$depth" "$mod"
