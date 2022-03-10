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