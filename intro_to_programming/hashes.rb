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


# Write a method element_count that takes in an array and returns a hash representing the count of each element in the array.
def element_count(arr)
    count_hash = Hash.new(0)
    arr.each { |ele| count_hash[ele] += 1 }
    count_hash
end


# Write a method select_upcase_keys that takes in a hash and returns a new hash containing key-value pairs of the original hash
# that had uppercase keys. You can assume that the keys will always be strings.
def select_upcase_keys(hash)
    upcase_hash = Hash.new()
    hash.each { |k, v| upcase_hash[k] = v if k == k.upcase }
    upcase_hash
end


# Write a method hand_score that takes in a string representing a hand of cards and returns it's total score. You can assume the letters
# in the string are only A, K, Q, J. A is worth 4 points, K is 3 points, Q is 2 points, and J is 1 point.
# The letters of the input string not necessarily uppercase.
def hand_score(hand)
    hand_hash = Hash.new(0)
    hand.each_char { |char| hand_hash[char.upcase] += 1 }
    
    hand_hash["A"] *= 4 if hand_hash.has_key?("A")
    hand_hash["K"] *= 3 if hand_hash.has_key?("K")
    hand_hash["Q"] *= 2 if hand_hash.has_key?("Q")
    hand_hash["J"] *= 1 if hand_hash.has_key?("J")
    
    sum = 0
    hand_hash.each_value { |val| sum += val }
    sum
end


# Write a method frequent_letters that takes in a string and returns an array containing the characters that 
# appeared more than twice in the string.
def frequent_letters(string)
    freq_arr = []
    freq_hash = Hash.new(0)
    # Create a char with each letter and frequency, then push char to array if value > 2
    string.each_char { |char| freq_hash[char] += 1 }
    freq_hash.each { |k, v| freq_arr << k if v > 2 }
    freq_arr
end


# Write a method hash_to_pairs that takes in a hash and returns a 2D array representing each key-value pair of the hash.
def hash_to_pairs(hash)
    pairs = Array.new()
    hash.each { |k, v| pairs << [k, v] }
    pairs
end


# Write a method unique_elements that takes in an array and returns a new array where all duplicate elements are removed. 
# Solve this using a hash.
def unique_elements(arr)
    hash_letters = Hash.new(0)
    arr.each { |ele| hash_letters[ele] += 1 }
    hash_letters.keys
end


# Write a method element_replace that takes in an array and a hash. The method should return a new array
# where elements of the original array are replaced with their corresponding values in the hash.
def element_replace(arr, hash)
    arr.each_with_index do |ele, idx|
        arr[idx] = hash[ele] if hash.has_key?(ele)
    end
    arr
end