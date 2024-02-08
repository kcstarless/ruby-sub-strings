# Ruby-Sub-Strings

## 1. Description
A function that takes two argument, a text and a dictionary of words. 
Checks if any of words in text matches the dictionary and returns 
matching word and number of times it was found in hash listing. 

## 2. Usage
Run the program on terminal
> 1. Will prompt for user input.
> 2. Enter a word or sentence.
> 3. Program will re-prompt if input is empty
> 4. Result will be displayed: 
>       - if matching word is found in hash.
>       - with word as key and integer value as number of occurence.
>       - if no match is found will print "No Match"

## 3. Future update or add on
> 1. Web migration

## 4. Thoughts on the project
Using nested .each loop in the function feels messy. 
```
  # Check if the word in text contains in the dictionary
  dictionary.each do |dic_word|
    txtSplit.each do |txt_word|
      if dic_word == txt_word
        # Add matching word as key and value increase each time found
        word_count[dic_word] += 1
      end
    end
  end
```
It dosen't have that <b>Ruby way!</b> feel. 
