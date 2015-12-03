puts (IO.readlines('input.txt').inject(0) do |m, p|
  (l,w,h) = p.split('x').map(&:to_i)
  shortest = [l,w,h]
  shortest.delete_at([l,w,h].each_with_index.max[1])
  m + shortest.inject(0) { |m, k| m + k * 2 } + l * w * h
end)
