#!/usr/bin/env ruby

require 'prime'

def e3
  number = n = Integer(ARGV[0]) rescue 600851475143
  puts "number: #{n}"
  fp = []
  for p in Prime::Generator23.new
    while n % p == 0
      n = n / p
      fp.push(p)
    end
    puts "result for #{p}: #{n}"
    break if n < 2
  end
  fp
end

puts e3.inspect