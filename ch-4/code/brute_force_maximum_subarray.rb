#!/usr/bin/env ruby

# CODE FOR 4.1-2
#
# O(n^2) Solution.

def brute_force_maximum_subarray(a)
  low = 0
  high = 0
  profit = 0

  (0).upto(a.length - 1) do |j|
    i = j
    current_profit = 0
    while i <= a.length - 1 do
      current_profit += a[i]

      if current_profit > profit
        profit = current_profit
        low = j
        high = i
      end

      i += 1
    end
  end

  { low: low, high: high, value: profit }
end

if __FILE__ == $0
  a = [13, -3, -25, 20, -3, -16, -23, 18, 20, -7, 12, -5, -22, 15, -4, 7]
  puts "This is a: #{a * ', '}"
  result = brute_force_maximum_subarray(a)
  puts "This is result: #{result}"
end
