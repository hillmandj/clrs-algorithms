#!/usr/bin/env ruby

# Code for 2.3-5

# NOTE: When doing this, be sure to keep track of l and r.
# If you do not, and just slice at the midpoint, you'll never keep the
# original index of the array, since the midpoint is calculated each time.
def binary_search(a, l, r, v)
  # Return if l is greater than or equal to r, since this would mean
  # we'd have searched through the entire array
  return if l >= r

  # Calculate midpoint
  m = (l + r) / 2

  # This is what returns the answer, eventually you will hit the value
  # if you keep on dividing the array in half.
  return m if a[m] == v

  # If the current value a[m] is greater than what we're looking for
  # we can eliminate the top half of the list. If it is less than what
  # we're looking for, we can eliminate the bottom half of the list
  if a[m] > v
    binary_search(a, l, m - 1, v)
  else
    binary_search(a, m + 1, r, v)
  end
end

if __FILE__ == $0
  # Binary search assumes the array sorted
  a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  r = binary_search(a, 0, a.length, 7)
  puts "r is #{r}"
end
