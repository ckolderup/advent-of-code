require 'digest'
key = ARGV[0] || "bgvyzdsv"
i = 1
str = "#{key}#{i}"
until Digest::MD5.hexdigest(str)[0,6] == '000000'
  i += 1
  str = "#{key}#{i}"
  puts "#{i}: #{str} (#{Digest::MD5.hexdigest(str)})"
end
puts i
