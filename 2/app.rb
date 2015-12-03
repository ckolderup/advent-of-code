puts IO.readlines('input.txt').inject(0) do |m, p|
  (l,w,h) = p.split('x').map(&:to_i)
  m + 2 * l * w + 2 * w * h + 2 * h * l + [l*w,w*h,h*l].min
end
