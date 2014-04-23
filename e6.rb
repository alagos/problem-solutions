#!/usr/bin/env ruby

def e6
  limit = Integer(ARGV[0]) rescue 10
  primes, all_primes = [], []
  sum = exp = 0

  for n in 1..limit
    exp += n**2
    sum += n
  end
  (sum**2) - exp
end

puts "#{e6}"