set datafile separator ","
set xdata time
set timefmt "%Y-%m-%dT%H:%M+0100"
set format x "%m-%d\n%H:%M"
set terminal png size 1280,768
set output "rep_A5_1.png"
set key on outside

set title "Majorana Algebra construction runtimes"
set style data linespoints

plot for [n=2:2] "rep_A5_1.csv" using 1:(column(n)/1e6) with lines title "rep_A5_1"

