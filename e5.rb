#!/usr/bin/env ruby

def e5
  result = 0
  i = 1
  limit = Integer(ARGV[0]) rescue 10
  loop do
    [*2..limit].each do |n|
      if i % n != 0
        break
      elsif n == limit
        result = i
      end
    end
    result > 0 ? break : i+= 1
  end
  result
end

puts e5