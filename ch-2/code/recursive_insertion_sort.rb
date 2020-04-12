#!/usr/bin/env ruby

# Code for 2.3-4

def recursive_insertion_sort(a, n)
  # Return if we've gone through all elements
  return a if n <= 1

  # Do what the problem says, we have to recursively A[1..n-1]
  recursive_insertion_sort(a, n - 1)

  # This is similar to what we do in regular insertion sort, just
  # was a bit hard to identify that we should pick the last element
  # and start sorting the subarray based on that, but easier to think when
  # you have a base case of something like [1,0]...
  key = a[n - 1]
  i = n - 2

  # Same as regular insertion sort, shift up indices for elements that are
  # greater than the key
  while i >= 0 && a[i] > key
    a[i + 1] = a[i]
    i = i - 1
  end

  # Insert in proper position
  a[i + 1] = key

  a
end

if __FILE__ == $0
  a = [31, 41, 59, 26, 41, 58]
  puts "This is a: #{a.join(', ')}"
  x = recursive_insertion_sort(a, a.length)
  puts "This is x: #{x.join(', ')}"
end
