#!/usr/bin/gnuplot

#       Copyright 2013 Allan Psicobyte (psicobyte@gmail.com)
#
#       This program is free software: you can redistribute it and/or modify
#       it under the terms of the GNU General Public License as published by
#       the Free Software Foundation, either version 3 of the License, or
#       (at your option) any later version.
#
#       This program is distributed in the hope that it will be useful,
#       but WITHOUT ANY WARRANTY; without even the implied warranty of
#       MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#       GNU General Public License for more details.
#
#       You should have received a copy of the GNU General Public License
#       along with this program.  If not, see <http://www.gnu.org/licenses/>.

reset

set term png size 1000,1000
set output "victimas_violencia_pareja.png"
set datafile separator ','

set title "Víctimas mortales de la Violencia de Género y de la Violencia Doméstica en el ámbito de la pareja o ex pareja"

set key autotitle columnheader left

set style data histogram
set style histogram clustered
set style fill transparent solid 0.25

set grid y

set label "© Allan Psicobyte. CC BY-SA 3.0" at 4,75

set xlabel "Fuente: Informes sobre víctimas mortales de la Violencia de Género y de la Violencia Doméstica en el ámbito de la pareja o ex pareja \n http://www.poderjudicial.es/cgpj/es/Temas/Violencia-domestica-y-de-genero/Actividad-del-Observatorio/Informes-de-violencia-domestica"

plot for [COL=2:3] 'victimas_violencia_pareja.csv' using COL:xticlabels(1) title columnheader

