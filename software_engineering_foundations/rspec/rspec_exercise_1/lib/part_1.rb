def average(num_1, num_2)
    (num_1 + num_2) / 2.0
end

def average_array(arr)
    arr.sum / arr.length.to_f
end

def repeat(str, num)
    str * num
end

def yell(str)
    str.upcase + "!"
end

def alternating_case(str)
    words = str.split(" ")
    cased_words = Array.new
    (0...words.length).each do |idx|
        cased_words << words[idx].upcase if idx.even?
        cased_words << words[idx].downcase if !idx.even?
    end
    cased_words.join(" ")
end