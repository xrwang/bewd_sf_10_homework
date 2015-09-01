# place = {:name=>"boston",
#   :long=>"38",
#   :lat=>"42",
#  :state=>"MA",
#  :status=>"awesome",
#  :motto=>"go pats!",
#  :ethos=>"friendliness",
#  :character=>"warmth"}
#
#  place2 = {:name=>"new york",
#  :foods=>"lots",
#  :rent=>"expensive"}
#
#
# place.each do |key,value|
#   puts "Place's #{key} is #{value}"
# end




#get the entire string so taht each word is part of an array that way we can iterate
#over the array
#make sure words are all downcased
#

# { :word => 9 }
#
# { "I" => 9, "ship" => 3 }
# iterate through each word



def get_input
  puts "Please enter the first word that comes to mind to describe your day"
  answer = gets.chomp
  # array_moby(moby_dick)
# moby_words.each do |word|
#   # puts word
#   # if the word is "I" add 1 in tally
#   if tally.has_key?(word)
#     # tally already exists
#     tally[word] += 1
#   else
#     # tally doesn't exist yet, setting it
#     tally[word] = 1
#   end
end


def array_moby(moby_dick)
  moby_words = moby_dick.split(" ")
  # random_word (answer, moby_words)
end
#

def random_word (answer,selection_pool)
  random_selector = answer.length
  magic_word = selection_pool[random_selector]
  puts  "Great. Your poetic spirit fortune for tomorrow is ...#{magic_word}..."
end



moby_dick = %{
  Call me Ishmael.  Some years ago--never mind how long
precisely--having little or no money in my purse, and nothing
particular to interest me on shore, I thought I would sail about a
little and see the watery part of the world.  It is a way I have of
driving off the spleen and regulating the circulation.  Whenever I
find myself growing grim about the mouth; whenever it is a damp,
drizzly November in my soul; whenever I find myself involuntarily
pausing before coffin warehouses, and bringing up the rear of every
funeral I meet; and especially whenever my hypos get such an upper
hand of me, that it requires a strong moral principle to prevent me
from deliberately stepping into the street, and methodically knocking
people's hats off--then, I account it high time to get to sea as soon
as I can.  This is my substitute for pistol and ball.  With a
philosophical flourish Cato throws himself upon his sword; I quietly
take to the ship.  There is nothing surprising in this.  If they but
knew it, almost all men in their degree, some time or other, cherish
very nearly the same feelings towards the ocean with me.
}

answer = get_input
selection_pool = array_moby(moby_dick)
random_word(answer,selection_pool)
