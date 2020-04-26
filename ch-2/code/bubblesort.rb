#!/usr/bin/env ruby

# Code from Problem Set 2-2

def bubble_sort(a)
  # For each index in the array
  0.upto(a.length - 1) do |i|
    # For each index to the right of it (though keep in mind, swap includes it)
    (a.length - 1).downto(i + 1) do |j|
      # If the current element is less than the element to the left of it
      if a[j] < a[j - 1]
        # Swap the two elements
        a[j], a[j - 1] = a[j - 1], a[j]
      end
    end
  end
  a
end

if __FILE__ == $0
  a = [21, 3, 32, 8, 45, 10, 59, 49]
  puts "This is a: #{a}"
  r = bubble_sort(a)
  puts "This is r: #{r}"
end
