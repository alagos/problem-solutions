#!/usr/bin/env ruby

require 'prime'

def e5
  limit = Integer(ARGV[0]) rescue 20
  primes, all_primes = [], []
  n = 2

  while n <= limit do
    if Prime.prime?(n)
      primes.push(n)
      all_primes.push(n)
    else
      primes.each do |p|
        nt = n
        nt /= p while nt % p == 0
        all_primes.push(p) if nt == 1
      end
    end
    puts "#{n} => #{all_primes.inspect} = #{all_primes.inject(:*)} "
    n+=1
  end
  all_primes
end

result = e5
puts "#{result.inspect} = #{result.inject(:*)}"