input = IO.read("input.txt")

floor = 0
position = 1
input.split('').each do |symbol|
  case symbol
  when '('
    floor += 1
  when ')'
    floor -= 1
  end
  break if floor < 0
  position += 1
end
puts position
