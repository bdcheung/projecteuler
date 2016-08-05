# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

require 'prime'
number = 600851475143
factors = number.prime_division.map(&:first)
factors.reject!{|n| !n.prime?}
factors.max