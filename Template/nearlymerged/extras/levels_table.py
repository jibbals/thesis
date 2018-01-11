# -*- coding: utf-8 -*-
"""
Created on Fri Feb 26 14:39:48 2016

@author: jesse
"""

import csv

with open('geos5_47L_vgrid.csv','r') as csvfile:
    csvreader=csv.reader(csvfile)
    print "\\begin{table}\\begin{tabular}{|l|c|c|}"
    print "Level & z(km) & eta \n \\\\ \\hline"
    i = 1
    for row in csvreader:
        print "%2d & %2.6f & %0.8f \n \\\\ \\hline" % (i, float(row[0]), float(row[1]))
        i=i+1
        
    print "\\end{table}\\end{tabular}{|l|c|c|}"