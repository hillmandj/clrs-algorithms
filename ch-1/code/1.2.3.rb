#!/usr/bin/env ruby

def exponential_less_than_squared?(n)
  squared = 100 * n ** 2
  exponential = 2 ** n
  puts "n: #{n}, squared: #{squared}, exponential: #{exponential}"
  exponential < squared
end

if __FILE__ == $0
  n = 1

  while exponential_less_than_squared?(n) do
    n += 1
  end

  puts n
end
