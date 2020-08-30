#!/usr/bin/env ruby

require 'benchmark'
require_relative './maximum_subarray.rb'
require_relative './brute_force_maximum_subarray.rb'

# CODE FOR 4.1-3

def combined_maximum_subarray(a, n_naught)
  return brute_force_maximum_subarray(a) if a.length < n_naught
  return { low: low, high: high, value: a[low] } if low == high

  mid = (low + high) / 2
  left_result  = combined_maximum_subarray(a, low, mid)
  right_result = combined_maximum_subarray(a, mid + 1, high)
  cross_result = combined_maximum_cross_subarray(a, low, mid, high)

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

# NOTE: This varies but falls in the range of about n = 34..38 on my machine
def n_naught_brute_vs_recursive(a)
  time_brute = Benchmark.realtime { brute_force_maximum_subarray(a) }
  time_recursive = Benchmark.realtime { maximum_subarray(a, 0, a.length - 1) }

  while time_brute < time_recursive do
    a << a.sample
    time_brute = Benchmark.realtime { brute_force_maximum_subarray(a) }
    time_recursive = Benchmark.realtime { maximum_subarray(a, 0, a.length - 1) }
  end

  result = a.length
end

def n_naught_brute_vs_combined(a, original_n_naught)
  time_brute = Benchmark.realtime { brute_force_maximum_subarray(a) }
  time_recursive = Benchmark.realtime { combined_maximum_subarray(a, original_n_naught) }

  while time_brute < time_recursive do
    a << a.sample
    time_brute = Benchmark.realtime { brute_force_maximum_subarray(a) }
    time_recursive = Benchmark.realtime { combined_maximum_subarray(a, original_n_naught) }
  end

  result = a.length
end

if __FILE__ == $0
  a = [13, -3, -25, 20, -3, -16, -23, 18, 20, -7, 12, -5, -22, 15, -4, 7]
  n_naught = n_naught_brute_vs_recursive(a.clone)
  puts "n_naught is: #{n_naught}"
  puts "This is a: #{a * ', '}"
  result = combined_maximum_subarray(a, n_naught)
  puts "This is result using the combined approach: #{result}"
  new_crossover = n_naught_brute_vs_combined(a.clone, n_naught)
  puts "This is the n_naught when comparing brute-force and combined: #{new_crossover}"
end
