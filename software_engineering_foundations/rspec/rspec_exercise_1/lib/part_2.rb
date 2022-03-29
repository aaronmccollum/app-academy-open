def hipsterfy(word)
    reversed_word = word.split("").reverse
    (0...reversed_word.length).each do |idx|
        if "aeiou".include?(reversed_word[idx])
            reversed_word.slice!(idx)
            break
        end
    end
    reversed_word.join("").reverse
end

def vowel_counts(str)
    vowel_hash = Hash.new(0)
    str.downcase.each_char { |char| vowel_hash[char] += 1 if "aeiou".include?(char) }
    vowel_hash
end

def caesar_cipher(str, num)
    answer = Array.new
    letters = str.split("")
    letters.each do |char| 
        if !("abcdefghijklmnopqrstuvwxyz".include?(char))
            answer << char
        else
            answer << shift_letter(char, num)
        end
    end
    answer.join("")
end

# Helper for caesar_cipher method
def shift_letter(char, length)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    index = alphabet.index(char)
    new_index = index + length
    alphabet[new_index % 26]
end