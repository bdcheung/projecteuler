require 'prime'
@primes = []
i=1
until @primes.count == 10001
  @primes << i if i.prime?
  i+=1
end
@primes[10000]
