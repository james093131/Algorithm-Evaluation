reset
set term gif animate delay 0.05
#set term gif animate

set output "/home/ailab/Downloads/Euclidean_distance/Record_Points_GIF/GIF/R10_OG_DE_SEEN.gif"
set xrange [-5.12: 5.12]
set yrange [-5.12:5.12]
set zrange [0.0:150.0]
set xyplane at 0

do for [i=100:5000:100]{
  set title sprintf("RASTRIGIN time=%i",i*20)
  splot sprintf("/home/ailab/Downloads/Euclidean_distance/PLT_AND_TXT/R10_OG_DE/R10%i.txt",i) u 1:2:11 ps 0.2 pt 14  lc rgb '#778da9' t "points" 
  #bfa89e
}
set output
