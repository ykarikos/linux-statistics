set terminal png medium size 800, 500
set output "linux-statistics.png"

set style data lines

set grid x y
set border
plot 'linux-statistics.txt' using 2:xticlabels(1) t 'size (M)'
#     'linux-statistics.txt' using 1:3 t 'number of files'

