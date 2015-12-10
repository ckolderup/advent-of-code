def apply(cursor, transform)
  cursor = [cursor.first + transform.first,
            cursor.last  + transform.last]
end
key = { '^' => [0, -1],
        'v' => [0, 1],
        '<' => [-1, 0],
        '>' => [1, 0]}
coords = {[0,0] => 2}
cursor = [0, 0]
IO.read('input.txt').split('').each do |arrow|
  next if key[arrow].nil?
  cursor = apply(cursor, key[arrow])
  coords[cursor] ||= 0
  coords[cursor] += 1
end
puts coords.keys.size
