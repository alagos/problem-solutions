#!/usr/bin/env ruby

def e1(a)
  r = 0
  (1..(a -1)).each do |n|
    r += n if n % 3 == 0 || n % 5 == 0
  end
  r
end

puts e1(1000)
