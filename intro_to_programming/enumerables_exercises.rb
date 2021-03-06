# Write a method to_initials that takes in a person's name string and returns a string representing their initials.
def to_initials(name)
    names = name.split(" ")
    initials = []
    
    names.each { |name| initials << name[0] }
    
    initials.join("")
end
  
puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"


# Write a method first_in_array that takes in an array and two elements, the method should return the element that appears earlier in the array.
def first_in_array(arr, el1, el2)
    el1_index = arr.index(el1)
    el2_index = arr.index(el2)
    
    return arr[el1_index] if el1_index < el2_index
    arr[el2_index]
  
end
  
puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"


# Write a method abbreviate_sentence that takes in a sentence string and returns a new sentence where every word longer than 4 characters has all of it's vowels removed.
def abbreviate_sentence(sent)
    words = sent.split(" ")
    abbrev_words = []
    
    words.each do |word|
        if word.length > 4
            abbrev_words << remove_vowels(word)
        else
            abbrev_words << word
        end
    end
    
    abbrev_words.join(" ")
end
  
def remove_vowels(word)
    vowels = "aeiou"
    no_vowels = []
    word.each_char do |char|
        if !(vowels.include?(char))
            no_vowels << char
        end
    end
    no_vowels.join("")
end
  
puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"


# Write a method format_name that takes in a name string and returns the name properly capitalized.
def format_name(str)
    names = str.split(" ")
    formatted_names = []
    
    names.each { |name| formatted_names << format_word(name) }
    
    formatted_names.join(" ")
end
  
def format_word(word)
    new_word = []
    word.each_char.with_index do |char, i|
        if i == 0
            new_word << char.upcase
        else
            new_word << char.downcase
        end
    end
    new_word.join("")
end
  
puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"


# Write a method is_valid_name that takes in a string and returns a boolean indicating whether or not it is a valid name.
def is_valid_name(str)
    names = str.split(" ")
    length = names.length
  
    # Add 1 to count each time a name matches proper syntax
    # If length and count are the same, it's a proper name
    count = 0
    names.each do |name|
        if name == format_word(name)
            count += 1
    end
end
  
    return false if length <= 1
    return false if count != length
    true
end

# format_word method from previous exercise
def format_word(word)
    new_word = []
    word.each_char.with_index do |char, i|
        if i == 0
            new_word << char.upcase
        else
            new_word << char.downcase
        end
    end
    new_word.join("")
end

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false


# Write a method is_valid_email that takes in a string and returns a boolean indicating whether or not it is a valid email address.
def is_valid_email(str)
    # Check for @ sign by splitting str at @ sign. Only length of 2 is allowed
    if str.include?("@")
        segments = str.split("@")
    else
        return false
    end

    # Return false if first segment contains numbers
    segments[0].each_char { |char| return false if "0123456789".include?(char) }
  
    # Ensure only one period dot after the @ sign (in the second segment)
    period_count = 0
    segments[1].each_char do |char|
        if char == "."
            period_count += 1
        end
    end
    
    # False statements to ensure requirements are met. Return true if no false return occurs
    return false if segments.length != 2
    return false if segments[0] != segments[0].downcase
    return false if period_count != 1
    true
end


# Write a method reverse_words that takes in a sentence string and returns the sentence with the order of the characters in each word reversed.
# Note that we need to reverse the order of characters in the words, do not reverse the order of words in the sentence.
def reverse_words(sent)
    sent_array = sent.split(" ")
    answer = []
    sent_array.each { |word| answer << word.reverse }
    answer.join(" ")
end

puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'


# Write a method rotate_array that takes in an array and a number. The method should return the array after rotating
# the elements the specified number of times. A single rotation takes the last element of the array and moves it to the front.
def rotate_array(arr, num)
    num.times do
  	    last_word = arr.pop()
        arr.unshift(last_word)
    end
  
    arr
end

print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
print rotate_array([ "a", "b", "c", "d" ], 2) # => [ "c", "d", "a", "b" ]
