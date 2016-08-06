@sumsquares = (1..100).each.inject(0){|sum, x| sum + x**2}
@squaresums = (1..100).each.inject(0){|sum,x| sum+x}**2
@squaresums - @sumsquares
