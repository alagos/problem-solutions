#!/usr/bin/env ruby

def e4
  result = 0
  [*100..999].reverse_each do |n1|
    [*100..n1].reverse_each do |n2|
      product = n1 * n2
      if product.to_s == product.to_s.reverse
        puts "#{n1} * #{n2} = #{product}"
        result = product if product > result
        break
      end
    end
  end
  result
end

puts e4