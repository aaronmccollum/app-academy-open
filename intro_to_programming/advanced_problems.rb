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


# Write a method prime_factors that takes in a number and returns an array containing all of the prime factors of the given number.
def prime_factors(num)
    range = (2..num)
    prime_range = range.select { |n| prime?(n) }
    prime_factors = prime_range.select { |pnum| num % pnum == 0 }
    prime_factors
end
  
def prime?(num)
    count = 0
    range = (2..num).to_a
    range.each { |ele| count += 1 if num % ele == 0 }
    return true if num == 1
    return true if count == 1
    false
end


# Write a method greatest_factor_array that takes in an array of numbers and returns a new array 
# where every even number is replaced with it's greatest factor.
# A greatest factor is the largest number that divides another with no remainder.
# For example the greatest factor of 16 is 8.
def greatest_factor_array(arr)
    factor_arr = arr.map do |num|
        if num % 2 == 0
            num = num / 2
        else
            num
        end
    end
    factor_arr
end


# Write a method perfect_square? that takes in a number and returns a boolean indicating whether it is a perfect square.
# A perfect square is a number that results from multiplying a number by itself.
def perfect_square?(num)
    (2..num).each { |n| return true if num / n.to_f == n }
    false
end


# Write a method triple_sequence that takes in two numbers, start and length. The method should return an array
# representing a sequence that begins with start and is length elements long. 
# In the sequence, every element should be 3 times the previous element.
def triple_sequence(start, length)
    answer_arr = Array.new()
    num = start
    length.times do
        answer_arr << num
        num *= 3
    end
    answer_arr
end


# Summation Sequence
# Discription can be found at: https://open.appacademy.io/learn/full-stack-online/intro-to-programming/summation-sequence
def summation_sequence(start, length)
    summation_arr = Array.new()
    num = start
    length.times do
        summation_arr << num
        num = summation(num)
    end
    summation_arr
end
  
def summation(num)
    sum = 0
    i = 1
    while i <= num
        sum += i
        i += 1
    end
    sum
end


# The fibonacci sequence is a sequence of numbers whose first and second elements are 1.
# Description: https://open.appacademy.io/learn/full-stack-online/intro-to-programming/fibonacci
def fibonacci(length)
    return [] if length == 0
    return [1] if length == 1
    answer = [1, 1]
    i = 0
    # Length - 2 because we already have the first two elements guaranteed in answer to set up the calculation
    while i < (length - 2)
        answer << answer[i] + answer[i+1]
        i += 1
    end
  
    answer
end


# Write a method caesar_cipher that takes in a string and a number. The method should return a new string
# where every character of the original is shifted num characters in the alphabet.
def caesar_cipher(str, num)
    answer = Array.new
    letters = str.split("")
    letters.each { |char| answer << shift_letter(char, num) }
    answer.join("")
end
  
def shift_letter(char, length)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    index = alphabet.index(char)
    new_index = index + length
    alphabet[new_index % 26]
end


# Write a method vowel_cipher that takes in a string and returns a new string where every vowel becomes the next vowel in the alphabet.
def vowel_cipher(string)
    vowels = "aeiou"
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    letters = string.split("")
    
    answer = letters.map do |char|
        if !(vowels.include?(char))
            char
        else
            index = vowels.index(char)
            new_index = (index + 1) % 5
            char = vowels[new_index]
        end
    end
    
    answer.join("")  
end


# Write a method that takes in a string and returns the number of times that the same letter repeats twice in a row.
def double_letter_count(string)
    count = 0
    letters = string.split("")
    letters.each_with_index do |char, i|
        next if i == 0
        if letters[i] == letters[i-1]
            count += 1
        end
    end
    count
end


# Write a method adjacent_sum that takes in an array of numbers and returns a new array containing the sums
# of adjacent numbers in the original array. See the examples.
def adjacent_sum(arr)
    answer = Array.new()
    arr.each_with_index do |num, i|
        break if i == (arr.length - 1)
        answer << arr[i] + arr[i+1]
    end
    answer
end


# Pyramid Sum
# Description: https://open.appacademy.io/learn/full-stack-online/intro-to-programming/pyramid-sum
def pyramid_sum(base)
    answer = [base]
    i = 0
    while i < base.length - 1
        answer.unshift(sum_ele(answer[0]))
        i += 1
    end
    answer
end
  
def sum_ele(arr)
    answer = Array.new()
    arr.each_with_index do |num, i|
        if i != arr.length - 1
            answer << num + arr[i+1]
        end
    end
    answer
end


# Write a method all_else_equal that takes in an array of numbers. The method should return the element of the array
# that is equal to half of the sum of all elements of the array. If there is no such element, the method should return nil.
def all_else_equal(arr)
    sum = 0
    arr.each { |num| sum += num }
    arr.each do |ele|
        return ele if sum / 2 == ele
    end
    nil
end


# Write a method anagrams? that takes in two words and returns a boolean indicating whether or not the words are anagrams.
# Anagrams are words that contain the same characters but not necessarily in the same order. Solve this without using .sort
def anagrams?(word1, word2)
    word1_hash = Hash.new(0)
    word2_hash = Hash.new(0)
    
    word1.each_char { |char| word1_hash[char] += 1 }
    word2.each_char { |char| word2_hash[char] += 1 }
    
    return true if word1_hash == word2_hash
    false
end


# Write a method consonant_cancel that takes in a sentence and returns a new sentence where every word begins with it's first vowel.
def consonant_cancel(sentence)
    words = sentence.split(" ")
    answer = words.map { |word| remove_first_consonants(word) }
    answer.join(" ")
end
  
def remove_first_consonants(word)
    vowels = "aeiou"
    letters = word.split("")
    answer_word = Array.new()
    
    letters.each do |char|
        if vowels.include?(char)
            i = letters.index(char)
            while i < letters.length
                answer_word << letters[i]
                i += 1
            end
            break
        else
            next
        end
    end
    answer_word.join("")
end  


# Same Char Collapse
# Description: https://open.appacademy.io/learn/full-stack-online/intro-to-programming/same-char-collapse
def same_char_collapse(str)
    while str.length > 2
        str = remove_same_char(str)
    end
    str
end
  
def remove_same_char(str)
    arr = str.split("")
    answer = Array.new()
    i = 1
    while i <= arr.length
        if arr[i] == arr[i-1]
            arr.delete_at(i)
            arr.delete_at(i-1)
        end
        i += 1
    end
    arr.join("")
end