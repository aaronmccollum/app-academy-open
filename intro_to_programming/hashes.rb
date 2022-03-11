# Write a method get_double_age that takes in a hash and returns twice the "age" value of the hash.
def get_double_age(hash)
    hash["age"] *= 2
end


# Write a method get_full_name that takes in a hash containing a first, last, and title.
# The method should return a string representing the hash's full name.
def get_full_name(hash)
    hash["first"] + " " + hash["last"] + ", the " + hash["title"]
end


# Write a method word_lengths that takes in a sentence string and returns a hash where every key is a word
# of the sentence, and its' corresponding value is the length of that word.
def word_lengths(sentence)
    words = sentence.split(" ")
    words_hash = Hash.new(0)
    
    words.each { |word| words_hash[word] = word.length }
    
    words_hash
end


# Write a method retrieve_values that takes in two hashes and a key. The method should
# return an array containing the values from the two hashes that correspond with the given key.
def retrieve_values(hash1, hash2, key)
    answer = []
    hash1.each { |k, v| answer << hash1[key] if k == key }
    hash2.each { |k, v| answer << hash2[key] if k == key }
    answer
end


# Write a method cat_builder that takes in a name, color, and age. The method should return a hash representing a cat with those values.
def cat_builder(name_str, color_str, age_num)
    cat_hash = Hash.new()
    cat_hash["name"] = name_str
    cat_hash["color"] = color_str
    cat_hash["age"] = age_num
    cat_hash
end


# Write a method ae_count that takes in a string and returns a hash containing the number of a's and e's in the string.
# Assume the string contains only lowercase characters.
def ae_count(str)
    ae_hash = Hash.new(0)
    
    str.each_char { |char| ae_hash[char] += 1 if char == "a" || char == "e" }
  
    ae_hash.sort_by { |k, v| k }.to_h
end