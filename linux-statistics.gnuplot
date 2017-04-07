set terminal png medium size 800, 500
set output "linux-statistics.png"

set style data lines
set y2tics
set grid x y
set border

set xdata time
set format x "%Y-%m"
set timefmt "%Y-%m-%d"
set xtics "2005-06", 31536000

set ylabel "MB"
set y2label "number of files"

set key below Right reverse box
plot 'linux-statistics.txt' using 1:3 t 'size', \
     'linux-statistics.txt' using 1:4 t 'files' axes x1y2

