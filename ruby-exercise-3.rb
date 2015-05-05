#The exercise is to make the last exercise answer clearer, shorter and simpler using methods
def to_words s
  s.split /\W+/
end

def starts_with_vowel s
  #FIXME Errors on an empty string
  #w{a e i o u} is a quick way of writing ['a', 'e', 'i', 'o', 'u']
  ['a', 'e', 'i', 'o', 'u'].include? s[0].downcase #Can you see why we use downcase here?
end

snowy = File.read 'the-man-from-snowy-river.txt'

snowy_lines = snowy.lines
snowy_words = to_words(snowy)
#Example
puts "Here are the lines of Snowy that start with a vowel"
a = snowy_lines[0]
if starts_with_vowel(snowy_lines[0])
  puts a
end

snowy_lines.each do |line|
  puts line if starts_with_vowel line
end

puts
puts "Here are the lines of Snowy that have an odd number of words"
#hint: a % b is the remainder after you divide a by b (called "mod" or "modulus")
# for example 17 % 2 == 1
puts "…"

puts
puts "Here are all the rhyming pairs from the ends of the Snowy lines"
i = 0
while i < snowy_lines.count

  puts
  i += 9 # This is a short way of writing i = i + 1
end
