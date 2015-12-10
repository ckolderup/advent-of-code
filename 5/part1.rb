def count_vowels(str)
  str.split('').keep_if { |c| c =~ /[aeiou]/ }.size
end

def has_double(str)
  ('a'..'z').to_a.map { |x| x * 2 }.each do |aa|
    return true if str.include?(aa)
  end
  false
end

def contains_forbidden_substrings(str)
  ['ab','cd','pq','xy'].each do |substr|
    return true if str.include?(substr)
  end
  false
end

def nice?(str)
  !contains_forbidden_substrings(str) && (count_vowels(str) >= 3) && has_double(str)
end

if ARGV[0]
  puts nice?(ARGV[0])
else
  puts IO.readlines("input.txt").inject(0) { |m,l| m += (nice?(l) ? 1 : 0)}
end
