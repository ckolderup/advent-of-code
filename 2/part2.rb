puts (IO.readlines('input.txt').inject(0) do |m, p|
  d = p.split('x').map(&:to_i).sort!
  m + d.take(2).inject(0) { |mm, k| mm + k*2 } + d.inject(1) { |mm,k| mm*k }
end)
