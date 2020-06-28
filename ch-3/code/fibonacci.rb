#!/usr/bin/env ruby

# Code for 3.2-7

# Mathematical Implementation
def fib(n)
  phi = (1 + Math.sqrt(5)) / 2
  conjugate = (1 - Math.sqrt(5)) / 2
  (((phi ** n) - (conjugate ** n)) / Math.sqrt(5)).to_i
end

def fibonnaci_sequence(num: 100)
  0.upto(num).each_with_object([]) { |n, o| o << fib(n) }
end


if __FILE__ == $0
  puts "Printing the first 100 Fibonacci numbers"
  puts "#{fibonnaci_sequence}"
end
