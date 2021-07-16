set title "IPC vs. matrix size"

# set terminal postscript eps enhanced
# set terminal pngcairo size 640,480 enhanced font 'Arial,10'

set xlabel "n - matrix size"
set ylabel "IPC"

set style line 1 \
    linecolor rgb '#0060ad' \
    linetype 1 linewidth 2 \
    pointtype 7 pointsize 1.5
set style line 2 \
    linecolor rgb '#dd181f' \
    linetype 1 linewidth 2 \
    pointtype 5 pointsize 1.5


set key autotitle columnhead
set datafile separator '\t'

plot "figure.dat" using 1:2 with linespoints linestyle 1,\
"figure.dat" using 1:3 with linespoints linestyle 2

# vim: ft=gnuplot
