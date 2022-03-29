def palindrome?(str)
    str_arr = str.split("")
    reverse_arr = Array.new
    str.length.times do
        reverse_arr << str_arr.pop
    end
    return true if str == reverse_arr.join("")
    false
end

def substrings(str)
    sub_arr = Array.new
    i = 0
    while i < str.length
        sub_arr << sub_word(str, i)
        i += 1
    end
    sub_arr.flatten
end

# helper function for substrings() method
def sub_word(word, num)
    subs = Array.new
    iterations = word.length - num
    
    i = 1
    iterations.times do
      subs << word[num, i]
      i += 1
    end

    subs
end

def palindrome_substrings(str)
    subs = substrings(str)
    subs.select { |word| palindrome?(word) if word.length > 1 }
end