

reset
# set term gif animate

set output "PNG/B_PCA_DE_SEEN.gif"
set term gif animate delay 20
set xrange [-150:150]
set yrange [-200:250]

do for [i=100:5000:100]{
  set grid
  j = i*20
  set title sprintf("Bent Cigar PCA time=%i",j)
  plot sprintf("/home/ailab/Downloads/Euclidean_distance/PCA/B10/B%i_point.txt",i) using 1:2 w  point pointtype 7 pointsize 0.17 lc rgb "#83c5be " ti "SEEN" ,sprintf("/home/ailab/Downloads/Euclidean_distance/PCA/B10/B%i_Verify.txt",i) using 1:2 w point pointtype  5 pointsize 0.17  lc rgb "#ffd166" ti "DE" 
  set grid
}
set output
