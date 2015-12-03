floor = 0
position = 1
IO.read('input.txt').split('').each do |symbol|
  floor += {'(' => 1, ')' => -1}[symbol]
  break if floor < 0
  position += 1
end
puts position
