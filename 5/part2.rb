def some_two_letter_substring_appears_twice(str)
  (0..(str.size-2)).to_a.each do |idx|
    substr = str[idx,2]
    match = str.sub(substr, '%%').match(substr)
    return true unless match.nil?
  end
  return false
end

def some_letter_is_bread(str)
  (0..(str.size-2)).to_a.each do |idx|
    return true if str[idx] == str[idx+2]
  end
  false
end

def nice?(str)
  some_two_letter_substring_appears_twice(str) &&
  some_letter_is_bread(str)
end

if ARGV[0]
  puts nice?(ARGV[0])
else
  puts IO.readlines("input.txt").inject(0) { |m,l| m += (nice?(l) ? 1 : 0)}
end
