require 'prime'
number = 600851475143
factors = number.prime_division.map(&:first)
factors.reject!{|n| !n.prime?}
factors.max