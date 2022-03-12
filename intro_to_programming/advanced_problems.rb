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