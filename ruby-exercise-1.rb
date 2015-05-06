poem = File.read('the-man-from-snowy-river.txt')
lines = poem.lines
words = poem.split /\W+/
                   #this means split at each non alphabetic character
                   # /\s+/ means it will split at ever white space

/\W+/ is a "regular expression" - a text-searching pattern.
/\s+/ The slashes start and end the pattern. \W means "any non-alphabetic character"
and + means "repeated one or more times"


# Examples:
# puts "There are #{words.count} words"
# puts "There are #{words.uniq.count} different words" #uniq removes duplicates

#Exercises:

puts "The second through sixth words are: #{words[1..5].join ", " }"
puts "The first line has #{lines[0].split(/\W+/).count } words in it"

first_stanza_lines = lines[0..8]
first_stanza = first_stanza_lines.join

puts "The first stanza has #{first_stanza.split(/\W+/).count} words in it"
puts "Here is the poem with its lines randomly rearranged #{lines.shuffle.join}"
