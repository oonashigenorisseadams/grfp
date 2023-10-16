# import libraries
library(plotrix)

# set save location
pdf("/home/oona/nsf_grfp/figs/pedigree_fig.pdf", width = 6, height = 5.2)
l_org = "#E69F00"
plot.new()
plot.window(xlim = c(0,30), ylim = c(0,26), asp = 1)

# grandparents
draw.circle(20, 23, 2)
rect(19, 21.4, 19.7, 24.6, col=l_org, border = l_org)
rect(20.3, 21.4, 21, 24.6, col='grey', border = 'grey')

rect(8, 21, 12, 25)
rect(9, 21.4, 9.7, 24.6, col = 'grey', border = 'grey')
rect(10.3, 21.4, 11, 24.6, col='grey', border = 'grey')

lines(c(12, 18), c(23,23), lwd=1.3)
lines(c(15,15), c(23,19), lwd=1.3)
lines(c(10,10,20,20), c(17,19,19,17), lwd=1.3)

# left parents
rect(8, 13, 12, 17)
rect(9, 13.4, 9.7, 16.6, col = 'grey', border = 'grey')
rect(10.3, 13.4, 11, 16.6, col = 'grey', border = 'grey')
rect(10.3, 13.4, 11, 16.2, col = l_org, border = l_org)

draw.circle(1, 15, 2)
rect(0, 13.4, .7, 16.6, col='grey', border='grey')
rect(1.3, 13.4, 2, 16.6, col='grey', border='grey')
lines(c(3,8), c(15,15), lwd=1.3)

# right parents
draw.circle(20, 15, 2)
rect(19, 13.4, 19.7, 16.6, col = 'grey', border = 'grey')
rect(20.3, 13.4, 21, 16.6, col = 'grey', border = 'grey')
rect(20.3, 14, 21, 16.6, col = l_org, border = l_org)

rect(27, 13, 31, 17)
rect(28, 13.4, 28.7, 16.6, col='grey', border='grey')
rect(29.3, 13.4, 30, 16.6, col='grey', border='grey')

lines(c(22,27), c(15,15), lwd=1.3)
lines(c(5,5), c(10,15), lwd=1.3)
lines(c(25,25), c(10,15), lwd=1.3)

# cousins
draw.circle(5, 8, 2)
rect(4, 6.4, 4.7, 9.6, col='grey', border='grey')
rect(5.3, 6.4, 6, 9.6, col = 'grey', border = 'grey')
rect(5.3, 7, 6, 9.6, col = l_org, border = l_org)

rect(23, 6, 27, 10)
rect(24, 6.4, 24.7, 9.6, col = 'grey', border = 'grey')
rect(25.3, 6.4, 26, 9.6, col='grey', border='grey')
rect(25.3, 7, 26, 9.6, col = l_org, border = l_org)

dev.off()

