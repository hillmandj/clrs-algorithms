#! /usr/bin/env ruby

# Code for 2.1-2

# Example: [2, 10, 3]
#
# Iteration 1:
#
# j = 1, i = 0, key = 10
#
# i >=0 is true and a[i] < key
#
# while loop 1:
# a[1] = 2
# i = -1
#
# i < 0 so while loop terminates
#
# a[0] = 10
#
# Array before iteration 2: [10, 2, 3]
#
# Iteration 2:
#
# j = 2, i = 1, key = 3
#
# i >= 0 and a[i] is 2 which is < 3
#
# while loop 1:
# a[2] = 2
# i = 0
#
# i >= 0 but a[i] which is 10 is > 3 so loop terminates
#
# a[1] = 3
#
# FINAL ARRAY: [10, 3, 2]

def desc_insertion_sort(a)
  1.upto(a.length - 1) do |j|
    key = a[j]
    i = j - 1

    # The only change between ascending and descending
    # insertion sort is the conditional here, where we
    # swap out a[i] > key for a[i] < key...
    while i >= 0 && a[i] < key do
      a[i + 1] = a[i]
      i = i - 1
    end
    a[i + 1] = key
  end
  a
end

if __FILE__ == $0
  a = 1.upto(10).to_a.shuffle
  puts "This is a: #{a.join(', ')}"
  x = desc_insertion_sort(a)
  puts "This is final: #{x.join(', ')}"
end
