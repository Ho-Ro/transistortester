set key title ""
unset logscale
set logscale x 10
set pointsize 1
set size ratio 0 1,1
set style data points
set style function lines
set xzeroaxis linetype -2 linewidth 1.000
set yzeroaxis linetype -2 linewidth 1.000
set ticslevel 0.5
set ytics border in scale 1,0.5 mirror norotate  offset character 0, 0, 0
#set ytics autofreq  norangelimit
set ytics 1  norangelimit
set xlabel  offset character 0, 0, 0 font "" textcolor lt -1 norotate
set xrange [ * : * ] noreverse nowriteback  # (currently [0.00000:8.00000] )
set ylabel  offset character 0, 0, 0 font "" textcolor lt -1 rotate by -270
set yrange [ -5.00000 : 5.00000 ] noreverse nowriteback
GNUTERM = "wxt"
set terminal pdf color 
set grid
set logscale x
set style data linespoints
set style line 1  linetype 1 linewidth 2.000 
set style line 2  linetype 2 linewidth 2.000 
set style line 3  linetype 3 linewidth 2.000 
set format x "%.0s%c"
set format y "% g"
set xtics border in scale 1,0.5 mirror norotate  offset character 0, 0, 0
set xtics autofreq  norangelimit
set key inside center top vertical Right noreverse enhanced autotitles nobox
set xlabel "Resistor value / Ω"
set ylabel "Error / \%"
set output "../GNU/Mega8resEN.pdf"
plot "../GNU/rmess.dat" u 1:(($2-$1)/$1*100) title "Mega8-1" ls 1, "../GNU/rmess.dat" u 1:(($3-$1)/$1*100) title "Mega8-2" ls 2, "../GNU/rmess.dat" u 1:(($4-$1)/$1*100) title "Mega8-3" ls 3,\
"../GNU/ormess.dat" u 1:(($2-$1)/$1*100) title "Mega8orig" ls 4
set output
set xlabel "hodnota odporu / Ω"
set ylabel "chyba / \%"
set output "../GNU/Mega8resCZ.pdf" ; replot ; set output
#
set xlabel "Значение сопротивления / Ω"
set ylabel "погрешность / \%"
set output "../GNU/Mega8resRU.pdf" ; replot ; set output
#
set xlabel "Widerstandswert / Ω"
set ylabel "Messfehler / \%"
set output "../GNU/Mega8resGE.pdf" ; replot ; set output
#
set xlabel "Resistor value / Ω"
set ylabel "Error / \%"
set output "../GNU/Mega8AresEN.pdf"
plot "../GNU/rmess.dat" u 1:(($5-$1)/$1*100) title "Mega8A-4" ls 1, "../GNU/rmess.dat" u 1:(($6-$1)/$1*100) title "Mega8A-5" ls 2, "../GNU/rmess.dat" u 1:(($7-$1)/$1*100) title "Mega8A-6" ls 3
set output
set xlabel "hodnota odporu / Ω"
set ylabel "chyba / \%"
set output "../GNU/Mega8AresCZ.pdf" ; replot ; set output
#
set xlabel "Значение сопротивления / Ω"
set ylabel "погрешность / \%"
set output "../GNU/Mega8AresRU.pdf" ; replot ; set output
#
set xlabel "Widerstandswert / Ω"
set ylabel "Messfehler / \%"
set output "../GNU/Mega8AresGE.pdf" ; replot ; set output
#
set xlabel "Resistor value / Ω"
set ylabel "Error / \%"
set output "../GNU/Mega8LresEN.pdf"
plot "../GNU/rmess.dat" u 1:(($8-$1)/$1*100) title "Mega8L-7" ls 1, "../GNU/rmess.dat" u 1:(($9-$1)/$1*100) title "Mega8L-8" ls 2, "../GNU/rmess.dat" u 1:(($10-$1)/$1*100) title "Mega8L-9" ls 3
set output
set xlabel "hodnota odporu / Ω"
set ylabel "chyba / \%"
set output "../GNU/Mega8LresCZ.pdf" ; replot ; set output
#
set xlabel "Значение сопротивления / Ω"
set ylabel "погрешность / \%"
set output "../GNU/Mega8LresRU.pdf" ; replot ; set output
#
set xlabel "Widerstandswert / Ω"
set ylabel "Messfehler / \%"
set output "../GNU/Mega8LresGE.pdf" ; replot ; set output
#
set xlabel "Resistor value / Ω"
set ylabel "Error / \%"
set output "../GNU/Mega168resEN.pdf"
plot "../GNU/rmess.dat" u 1:(($11-$1)/$1*100) title "Mega168" ls 1, "../GNU/rmess.dat" u 1:(($12-$1)/$1*100) title "Mega168as" ls 2
set output
set xlabel "hodnota odporu / Ω"
set ylabel "chyba / \%"
set output "../GNU/Mega168resCZ.pdf" ; replot ; set output
#
set xlabel "Значение сопротивления / Ω"
set ylabel "погрешность / \%"
set output "../GNU/Mega168resRU.pdf" ; replot ; set output
#
set xlabel "Widerstandswert / Ω"
set ylabel "Messfehler / \%"
set output "../GNU/Mega168resGE.pdf" ; replot ; set output
#
#    EOF
