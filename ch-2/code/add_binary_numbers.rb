#!/usr/bin/env ruby

# Code for 2.1-4

# Note a and b must be of the same length
def add_binary(a, b)
  if a.length != b.length
    raise(ArgumentError, 'A and B are not equal length')
  end

  c = []
  carry = 0

  (a.length - 1).downto(0) do |i|
    int_a = a[i].to_i
    int_b = b[i].to_i

    c[i + 1] = (int_a + int_b + carry) % 2

    if int_a + int_b + carry >= 2
      carry = 1
    else
      carry = 0
    end
  end

  c[0] = carry
  c
end


if __FILE__ == $0
  a = '100'.chars
  b = '101'.chars
  puts "a: #{a.join(', ')}, b: #{b.join(', ')}"

  c = add_binary(a, b)
  puts "c: #{c.join(', ')}"
end
