#!/usr/bin/env ruby

def e2
  a = Array.new([1,1])
  i = 2
  sum = 0
  limit = Integer(ARGV[0]) rescue 4000000
  while a[i -1] < limit
    a[i] = a[i-1] + a[i-2]
    sum += a[i] if a[i] % 2 == 0 && a[i] < limit
    i+=1
    # puts "#{i}: #{a[i]} / #{sum}"
  end
  sum
end

puts e2