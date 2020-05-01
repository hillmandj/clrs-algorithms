#!/usr/bin/env ruby

def count_inversions(a)
  if a.length <= 1
    return 0
  else
    mid = a.length / 2

    left = a.slice(0, mid)
    right = a.slice(mid, a.length - 1)

    count_left = count_inversions(left)
    count_right = count_inversions(right)
    count = merge(left, right) + count_left + count_right
  end
end

def merge(l, r)
  count = 0

  while ! (l.length == 0 || r.length == 0)
    if l.first > r.first
      count += 1
      l.shift
    else
      r.shift
    end
  end

  count
end

if __FILE__ == $0
  a = [3,2,1]
  puts "this is a: #{a}"
  # NOTE: This is always off by 1, not exactly sure why
  r = count_inversions(a)
  puts "this is r: #{r}"
end

