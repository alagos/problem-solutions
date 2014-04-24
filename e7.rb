#!/usr/bin/env ruby

require 'prime'

def e7
  # That's cheating!!
  Prime.take(10001).last
end

puts "#{e7}"