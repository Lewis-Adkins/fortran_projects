set term png
set output "quantum.png"
set encoding utf8

set multiplot

# Wave Function
set size 0.5, 0.5
set origin 0,0.5
set nokey
set xrange [0:1]
set xlabel "x"
set ylabel "{/Symbol f}(x)"
set title "Wave Equation"
plot 'quantum.txt' using 1:2 w l lw 0.5 lc rgb 'red' lt bgnd


# Probability Density
set size 0.5, 0.5
set origin 0.5,0.5
set nokey
set xrange [0:1]
set ylabel "|{/Symbol f}(x)|^2"
set title "Probability Density"
plot 'quantum.txt' using 1:3 w l lw 0.5 lc rgb 'blue' lt bgnd

#Together
set size 0.5, 0.5
set origin 0.25, 0
set xrange [0:1]
set ylabel " "
set title "{/Symbol f}(x) and |{/Symbol f}(x)|^2"
plot 'quantum.txt' using 1:2 w l lw 0.5 lc rgb 'red' lt bgnd, \
     'quantum.txt' using 1:3 w l lw 0.5 lc rgb 'blue' lt bgnd

unset multiplot
set output

