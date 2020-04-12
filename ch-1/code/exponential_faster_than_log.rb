#!/usr/bin/env ruby

# Code for 1.2.2

def exponential_faster_than_log?(n)
  exponential_runtime = 8.0 * n ** 2
  logarithmic_runtime = 64 * n * Math.log(n, 2)
  puts "n: #{n}, exponential: #{exponential_runtime}, logarithmic: #{logarithmic_runtime}"
  exponential_runtime < logarithmic_runtime
end

if __FILE__ == $0
  result = 2

  while exponential_faster_than_log?(result) do
    result += 1
  end

  puts result - 1
end
