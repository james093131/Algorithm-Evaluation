reset
set title "Time Comparision"
set ylabel "Time(sec)"
# set ylabel "Diversity"
set terminal png size 1024,798
set output "./table.png"
set boxwidth 0.25 relative 
set style fill solid 0.5 border 0.1
set xrange [5000:105000]
set xtics 10000
set grid y
# 設定長條圖的size
plot "./B10_SEEN_N.txt" using ($1 -2500):2 with boxes  ti "SEEN" linecolor rgb "#ffd166" ,\
"./B10_DE_N.txt" using ($1) :2 with boxes  ti "DE" linecolor rgb "#99c1de",\
"./B10_PSO_N.txt" using ($1 +2500):2 with boxes  ti "PSO" linecolor rgb "#52b69a"


set grid
# using 1:xtic(1) with histogram