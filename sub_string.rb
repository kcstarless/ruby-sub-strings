dictionary = ["below","down","go","going","horn",
              "how","howdy","it","i","low","own",
              "part","partner","sit"]

txt = ""

def substrings(txt, dictionary)
  # Prepare the text for check
  txtSplit = txt.gsub(/[^0-9A-Za-z]/, " ").split(" ")
  # Empty has
  word_count = Hash.new(0)

  # Check if the word in text contains in the dictionary
  dictionary.each do |dic_word|
    txtSplit.each do |txt_word|
      if dic_word == txt_word
        # Add matching word as key and value increase each time found
        word_count[dic_word] += 1
      end
    end
  end
  # Check if any match is found
  if word_count.empty?
    return "No Match"
  else
    word_count  # Return hash
  end
end

# Prompt user for text input
while txt.empty?
  puts "Enter a text: "
  txt = gets.chomp
end

p substrings(txt, dictionary)
