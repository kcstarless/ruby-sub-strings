# substrings 08/02/24

dictionary = ["below","down","go","going","horn",
              "how","howdy","it","i","low","own",
              "part","partner","sit"]

############# Second Solution ###########
# Function
def substrings(txt, dictionary)
  txt = txt.downcase.split
  result = Hash.new(0)
  # Check each word
  dictionary.each do |dict_word|
    txt.each do |txt_word|
      if txt_word.include?(dict_word)
        result[dict_word] += 1
      end
    end
  end
  # Return result
  result.empty? ? "No Match" : result
end

# Test
puts substrings("Howdy", dictionary)



############ First Solution ##########
# txt = ""

# def substrings(txt, dictionary)
#   # Prepare the text for check
#   txtSplit = txt.gsub(/[^0-9A-Za-z]/, " ").split(" ")
#   # Empty has
#   word_count = Hash.new(0)

#   # Check if the word in text contains in the dictionary
#   dictionary.each do |dic_word|
#     txtSplit.each do |txt_word|
#       if dic_word == txt_word
#         # Add matching word as key and value increase each time found
#         word_count[dic_word] += 1
#       end
#     end
#   end
#   # Check if any match is found
#   if word_count.empty?
#     return "No Match"
#   else
#     word_count  # Return hash
#   end
# end

# # Prompt user for text input
# while txt.empty?
#   puts "Enter a text: "
#   txt = gets.chomp
# end

# p substrings(txt, dictionary)

############# Solution from @fabianorong ############
# def substrings(word, dic)

#   myhash ={}
#   i = 0
#   word = word.downcase

#   dic.each do |wordd|
#       if word.include?(wordd)
#           myhash[wordd] = word.scan(wordd).length
#       end
#   end

#   p myhash
# end

############## Solution from @JC2823 ##############
# def substrings(string, dictionary)
#   result = Hash.new(0)

#   dictionary.each do |char|
#       result[char] = string.downcase.scan(char).length
#       result.delete(char) if result[char] == 0
#   end

#   return result
# end
