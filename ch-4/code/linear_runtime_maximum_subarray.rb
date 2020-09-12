#!/usr/bin/env ruby

# CODE FOR 4.1-5

def linear_maximum_subarray(a)
  # Initialize values that we'll be returning
  low = 0
  high = 0
  max_sum = 0

  # These are the values we'll use to keep track of where the
  # maximum subarray is, and the corressponding index.
  i = 0
  current_sum = 0

  (0).upto(a.length - 1).each do |j|
    # As we go left to right, add to current_sum
    current_sum += a[j]

    # If the sum is greater than the max_sum, we set our return
    # values to what is current
    if current_sum > max_sum
      low = i
      high = j
      max_sum = current_sum
    end

    # If the current_sum is less than 0, we know that we are
    # no longer in a place where the maximum subarray exists.
    #
    # We must reset our current_sum and i placeholders so that
    # we can start checking the next span of the array for the
    # maximum subarray.
    if current_sum < 0
      current_sum = 0
      i = j + 1
    end
  end

  return { low: low, high: high, value: max_sum }
end

if __FILE__ == $0
  a = [13, -3, -25, 20, -3, -16, -23, 18, 20, -7, 12, -5, -22, 15, -4, 7]
  puts "This is a: #{a * ', '}"
  result = linear_maximum_subarray(a)
  puts "This is result: #{result}"
end

