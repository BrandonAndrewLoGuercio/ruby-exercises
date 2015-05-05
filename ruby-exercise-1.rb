poem = File.read('the-man-from-snowy-river.txt')
lines = poem.lines
#print lines
#/\W+/ is a "regular expression" - a text-searching pattern.
# /\s+/ The slashes start and end the pattern. \W means "any non-alphabetic character"
# and + means "repeated one or more times"
words = poem.split /\W+/ #.split will make a new line at white space
                         #/\W+/ will make a new line at every non-alpha character

#Example
# puts "There are #{words.count} words"
# puts "There are #{words.uniq.count} different words" #uniq removes duplicatesen
# #
# # #Exercises
# puts "The second through sixth words are " + words[1, 5].join(' ')
# puts "The first line has #{lines[0].split(/\W+/).count.to_s} words in it"
# my_num = lines[0].split.count.to_s
# puts "The first line has #{my_num} words in it"
#
# first_stanza_lines = lines[0, 8]
# first_stanza = first_stanza_lines.join
# puts "The first stanza has #{first_stanza.split(/\W+/).count.to_s} words in it"
# puts "Here is the poem with its lines randomly rearranged " + (lines.shuffle.join)

puts words
