#!/bin/bash

BAGNAME=${1%/}
echo Using $BAGNAME

evo_traj tum "${BAGNAME}/$BAGNAME"'_filtered.tum' "${BAGNAME}/$BAGNAME"'_unfiltered.tum' --plot --plot_mode zx --save_plot "${BAGNAME}/${BAGNAME}_compare.pdf"
