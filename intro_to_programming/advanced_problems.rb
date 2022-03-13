# Write a method map_by_name  that takes in an array of hashes and returns a new array containing the names of each hash.
def map_by_name(arr)
    arr.map { |hash| hash["name"] }
end


# Write a method map_by_key that takes in an array of hashes and a key string.
# The method should returns a new array containing the values from each hash for the given key.
def map_by_key(arr, key)
    arr.map { |hash| hash[key] }
end


# Write a method yell_sentence that takes in a sentence string and returns a new sentence where every word is yelled.
# Example: yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"
def yell_sentence(sent)
    sent_arr = sent.split(" ")
    yelled_words = sent_arr.map { |word| word.upcase + "!" }
    yelled_words.join(" ")
end


# Write a method whisper_words that takes in an array of words and returns a new array containing a whispered version of each word.
# Example: whisper_words(["KEEP", "The", "NOISE", "down"]) # => ["keep...", "the...", "noise...", "down..."]
def whisper_words(words)
    words.map { |word| word.downcase + "..." }
end


# Write a method o_words that takes in a sentence string and returns an array of the words that contain an "o". 
# Use select in your solution!
def o_words(sentence)
    words = sentence.split(" ")
    words.select { |word| word.include?("o") }
end


# Write a method last_index that takes in a string and a character.
# The method should return the last index where the character can be found in the string.
def last_index(str, char)
    i = str.length - 1
    while i >= 0
        return i if str[i] == char
        i -= 1
    end
end


# Write a method most_vowels that takes in a sentence string and returns the word of the sentence that contains the most vowels.
def most_vowels(sentence)
    words = sentence.split(" ")
    vowels = "aeiou"
    vowel_count = Hash.new(0)
    
    words.each do |word|
        word.each_char { |char| vowel_count[word] += 1 if vowels.include?(char) }
    end
    
    vowel_count.sort[-1][0]
end


# Write a method prime? that takes in a number and returns a boolean, indicating whether the number is prime.
# A prime number is only divisible by 1 and itself.
def prime?(num)
    count = 0
    range = (2..num).to_a
  
    range.each { |ele| count += 1 if num % ele == 0 }
    
    return true if num == 1
    return true if count == 1
    false
end


# Write a method pick_primes that takes in an array of numbers and returns a new array containing only the prime numbers.
def pick_primes(numbers)
    numbers.select { |num| prime?(num) }
end
  
# Helper function from last exercise
def prime?(num)
    count = 0
    range = (2..num).to_a
    range.each { |ele| count += 1 if num % ele == 0 }
    return true if num == 1
    return true if count == 1
    false
end