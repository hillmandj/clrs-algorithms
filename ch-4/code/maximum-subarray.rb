#!/usr/bin/env ruby

# MAXIMUM SUBARRAY CODE

def maximum_subarray(a, low, high)
  return { low: low, high: high, value: a[low] } if low == high

  mid = (low + high) / 2
  left_result  = maximum_subarray(a, low, mid)
  right_result = maximum_subarray(a, mid + 1, high)
  cross_result = maximum_cross_subarray(a, low, mid, high)

  left_sum  = left_result[:value]
  right_sum = right_result[:value]
  cross_sum = cross_result[:value]

  if left_sum >= right_sum && left_sum >= cross_sum
    left_result
  elsif right_sum >= left_sum && right_sum >= cross_sum
    right_result
  elsif cross_sum >= left_sum && cross_sum >= right_sum
    cross_result
  end
end

def maximum_cross_subarray(a, low, mid, high)
  sum = 0
  left_sum = 0

  max_left = low
  max_right = high

  mid.downto(low) do |i|
    sum = sum + a[i]
    if sum > left_sum
      left_sum = sum
      max_left = i
    end
  end

  sum = 0
  right_sum = 0
  (mid + 1).upto(high) do |j|
    sum = sum + a[j]
    if sum > right_sum
      right_sum = sum
      max_right = j
    end
  end

  { low: max_left, high: max_right, value: left_sum + right_sum }
end

if __FILE__ == $0
  a = [13, -3, -25, 20, -3, -16, -23, 18, 20, -7, 12, -5, -22, 15, -4, 7]
  puts "This is #{a * ', '}"
  result = maximum_subarray(a, 0, a.length - 1)
  puts "This is result: #{result}"
end
