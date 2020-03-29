#!/usr/bin/env ruby

def selection_sort(a)
  0.upto(a.length - 1) do |j|
    min = j
    i = j + 1
    while i < a.length
      if a[i] < a[min]
        min = i
      end
      i = i + 1
    end

    a[j], a[min] = a[min], a[j]
  end
  a
end

if __FILE__ == $0
  a = 1.upto(10).to_a.shuffle
  puts "a: #{a.join(', ')}"
  b = selection_sort(a)
  puts "sorted: #{b.join(', ')}"
end
