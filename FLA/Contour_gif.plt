reset

# set xyplane at -100000.0
set xrange [-5.12:5.12]
set yrange [-5.12:5.12]
# set zrange [-100:500.0]

set dgrid 200,200,16
set contour base
set isosamples 200,200


set palette defined (0 "#8ecae6",1 "#b8f2e6",2"#118ab2",3 "#2b9348",4 "#90be6d", 5 "#f9c74f",6 "#f8961e",7 "#ff6b6b",8 "#e01e37",9 "#7251b5")

set cntrparam bspline points 2 levels auto
# set cntrparam bspline points 2 levels discrete 0,20,50,80,110,140,170,200

set pm3d 

set linetype 8 lc rgb "#8ecae6" lw 0.2 ps 0.1
set linetype 7 lc rgb "#b8f2e6" lw 0.2 ps 0.1
set linetype 6 lc rgb "#118ab2" lw 0.2 ps 0.1
# set linetype 5 lc rgb "#2b9348" lw 0.2 ps 0.1
set linetype 5 lc rgb "#90be6d" lw 0.2 ps 0.1
set linetype 4 lc rgb "#f9c74f" lw 0.2 ps 0.1
set linetype 3 lc rgb "#f8961e" lw 0.2 ps 0.1
set linetype 2 lc rgb "#ff6b6b" lw 0.2 ps 0.1

set hidden3d

set style increment user

set view 60, 110, 1, 1


set term gif animate delay 40 size 1024,768

set output sprintf("/home/ailab/Downloads/Euclidean_distance/Record_Points_GIF/GIF/Contour/0512/R10_Contour_SEEN_NET_1.gif")
do for [j=100:5000:300]{
    set title sprintf("Rastrigin time=%i ",j*20)
    splot sprintf("/home/ailab/Downloads/Euclidean_distance/PCA/R10/R%i_point.txt",j) u 1:2:3 ps 0.2 pt 14  lc rgb '#778da9' t "points" 
 

  }


set output


