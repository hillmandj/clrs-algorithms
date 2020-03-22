#!/usr/bin/env ruby

def insertion_sort(a)
  # From character at index 1 to the last index
  1.upto(a.length - 1) do |j|
    # Get the character at the current index
    key = a[j]
    # Fetch the index before the current index
    i = j - 1

    # While we still have items to the left of the current index
    # and the items left of the key are greater than the current key's value..
    while i >= 0 && a[i] > key do
      # Shift those items UP an index
      a[i + 1] = a[i]
      # Decrement the number of items on the left we went through
      i = i - 1
    end

    # Insert the current key in the proper position in the sorted items.
    a[i + 1] = key
  end
  a
end


if __FILE__ == $0
  a = [31, 41, 59, 26, 41, 58]
  puts "This is a: #{a.join(', ')}"
  x = insertion_sort(a)
  puts "This is x: #{x.join(', ')}"
end
