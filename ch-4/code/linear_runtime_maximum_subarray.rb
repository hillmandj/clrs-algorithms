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

  0.upto(a.length - 1).each do |j|
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

  { low: low, high: high, value: max_sum }
end

def sentinal_linear_maximum_subarray(a)
  low = 0
  high = 0

  # These are sentinals for the minimum integer value in ruby
  # This algorithm is better than what's up top since it will
  # return the highest value if every item in the array is
  # negative.
  #
  # This is calculated by taking the total number of bytes that
  # make up an integer (1.size == 8) times the number of bits in
  # a byte (8), removing 1 since one is used for the sign (totals 63).
  # We then bit shift any integer (in this case 1) that many times.
  max_sum = -(1 << (1.size * 8 - 1))
  current_sum = -(1 << (1.size * 8 - 1))
  i = 0

  0.upto(a.length - 1).each do |j|
    if current_sum > 0
      current_sum += a[j]
    else
      current_sum = a[j]
      i = j
    end

    if current_sum > max_sum
      low = i
      high = j
      max_sum = current_sum
    end
  end

  { low: low, high: high, value: max_sum }
end

if __FILE__ == $0
  a = [13, -3, -25, 20, -3, -16, -23, 18, 20, -7, 12, -5, -22, 15, -4, 7]
  puts "This is a: #{a * ', '}"
  result = linear_maximum_subarray(a)
  puts "This is result: #{result}"
  sentinal_result = sentinal_linear_maximum_subarray(a)
  puts "This is sentinal result: #{sentinal_result}"
  a = [-1, -2, -3]
  puts "This is another a: #{a * ', '}"
  result = linear_maximum_subarray(a)
  sentinal_result = sentinal_linear_maximum_subarray(a)
  puts "This is result (only shows that profit is 0): #{result}"
  puts "This is sentinal result (actual subarray): #{sentinal_result}"
end

