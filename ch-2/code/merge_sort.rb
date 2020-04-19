#!/usr/bin/env ruby

def merge_sort(a)
  if a.length <= 1
    return a
  else
    mid = a.length / 2
    l = merge_sort(a.slice(0, mid))
    r = merge_sort(a.slice(mid, a.length - 1))
    merge(l, r)
  end
end

def merge(l, r)
  ary = []

  while ! (l.length == 0 || r.length == 0)
    if l.first < r.first
      ary << l.shift
    else
      ary << r.shift
    end
  end

  ary.concat(l).concat(r)
end

if __FILE__ == $0
  a = [31, 41, 59, 38, 32, 11, 93, 4]
  puts "this is a: #{a}"
  r = merge_sort(a)
  puts "this is r: #{r}"
end
