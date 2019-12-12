#!/bin/bash

file='output_posesVIO'
echo "Using file: $file.csv"
evo_traj euroc "$file"".csv" --save_as_tum

if [ ! -z "$2" ]; then
    end="_$2" 
else
    end=""
fi

echo "Using ending: $end"

bag_dir=$(dirname "${1}")
bag_name=$(basename "${1}")
echo "Bag Name: $bag_name"

renamed="${bag_name::-4}$end.tum"
echo "Renamed: $renamed"

BAG_DIR="past/${bag_name::-4}"

mkdir -p $BAG_DIR
mv $file".tum" "$BAG_DIR/$renamed"

# evo_traj tum "$BAG_DIR/$renamed" --plot --plot_mode zx --save_plot "$bag_dir/plot-${bag_name::-4}$end.pdf"

echo "Done. Moving to new directory"

cd $BAG_DIR
