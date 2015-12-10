def apply(cursor, transform)
  cursor = [cursor.first + transform.first,
            cursor.last  + transform.last]
end

key = { '^' => [0, -1],
        'v' => [0, 1],
        '<' => [-1, 0],
        '>' => [1, 0]}
coords = {[0,0] => 2}

santa_cursor = [0, 0]
bot_cursor = [0, 0]

IO.read('input.txt').split('').each_with_index do |arrow, idx|
  next if key[arrow].nil?

  if idx % 2 == 0
    santa_cursor = apply(santa_cursor, key[arrow])
    coords[santa_cursor] ||= 0
    coords[santa_cursor] += 1
  else
    bot_cursor = apply(bot_cursor, key[arrow])
    coords[bot_cursor] ||= 0
    coords[bot_cursor] += 1
  end
end
puts coords.keys.size
