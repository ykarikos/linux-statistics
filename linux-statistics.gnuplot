set terminal png medium size 800, 500
set output "linux-statistics.png"

set style data lines
set y2tics
set grid x y
set border
plot 'linux-statistics.txt' using 2:xticlabels(1) t 'size (M)', \
     'linux-statistics.txt' using 3:xticlabels(1) t 'number of files' axes x1y2

