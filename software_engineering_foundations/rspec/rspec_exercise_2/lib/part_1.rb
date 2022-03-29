def partition(arr, num)
    more_arr = Array.new
    less_arr = Array.new
    arr.each do |ele|
        if ele >= num
            more_arr << ele
        else
            less_arr << ele
        end
    end
    
    answer = Array.new
    answer << less_arr
    answer << more_arr
    answer
end

def merge(hash_1, hash_2)
    merged_hash = Hash.new
    hash_1.each_pair { |k, v| merged_hash[k] = v }
    hash_2.each_pair { |k, v| merged_hash[k] = v }
    merged_hash
end

def censor(str, arr)
    str_arr = str.split(" ")
    censored_words = Array.new()
    str_arr.each do |word|
        if arr.include?(word.downcase)
            censored_words << bleep_word(word)
        else
            censored_words << word
        end
    end
    censored_words.join(" ")
end

# Helper method for censor() method
def bleep_word(word)
    letters = word.split("")
    censored = Array.new
    letters.each do |char|
        if "aeiou".include?(char.downcase)
            censored << "*"
        else
            censored << char
        end
    end
    censored.join("")
end

def power_of_two?(num)
    powers_arr = Array.new()
    i = 1
    while i <= num
        powers_arr << i
        i *= 2
    end
    return true if num == powers_arr[-1]
    false
end