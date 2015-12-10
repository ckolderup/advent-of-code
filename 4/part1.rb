require 'digest'
key = ARGV[0] || "bgvyzdsv"
i = 1
str = "#{key}#{i}"
until Digest::MD5.hexdigest(str)[0,5] == '00000'
  i += 1
  str = "#{key}#{i}"
  puts "#{i}: #{str}"
end
puts i
