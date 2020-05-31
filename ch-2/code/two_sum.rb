#!/usr/bin/env ruby

# Code for 2.3-7

# NOTE: This is not the complete answer, as we'd have to combine this with merge sort to get what we want.

def two_sum(a, x)
  h = {}

  a.each_with_index do |n, i|
    compliment = x - n

    if h.key?(compliment)
      return [i, h[compliment]]
    end

    h[n] = i
  end

  nil
end

if __FILE__ == $0
  a, x = [1, 2, 3, 4, 5], 4
  puts "a: #{a}"
  puts "x: #{x}"
  r = two_sum(a, x)
  puts "r is #{r}"
end
