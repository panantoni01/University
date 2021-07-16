set title "Time vs size of tile"

# set terminal postscript eps enhanced
# set terminal pngcairo size 640,480 enhanced font 'Arial,10'

set xlabel "Size of tile [2^n]"
set ylabel "Time [s]"

set style line 1 \
    linecolor rgb '#0060ad' \
    linetype 1 linewidth 2 \
    pointtype 7 pointsize 1.5

set key autotitle columnhead
set datafile separator '\t'

plot "kafel.dat" using 1:2 with linespoints linestyle 1, \

# vim: ft=gnuplot
