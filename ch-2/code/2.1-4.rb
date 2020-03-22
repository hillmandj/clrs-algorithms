#!/usr/bin/env ruby

# Note a and b must be of the same length
def add_binary(a, b)
  raise(ArgumentError, 'A and B are not equal length') if a.length != b.length
  c = []
  carry = 0
  (a.length - 1).downto(0) do |i|
    c[i + 1] = (a[i].to_i + b[i].to_i + carry) % 2
    if a[i].to_i + b[i].to_i + carry >= 2
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
