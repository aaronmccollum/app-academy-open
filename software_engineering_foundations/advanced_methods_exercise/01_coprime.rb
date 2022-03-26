# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

def coprime?(num1, num2)
    divisors_1 = find_divisors(num1)
    divisors_2 = find_divisors(num2)
    if divisors_1.length > divisors_2.length
        divisors_1.each { |ele| return false if divisors_2.include?(ele) }
    else
        divisors_2.each { |ele| return false if divisors_1.include?(ele) }
    end
    true
end

def find_divisors(num)
    answer = Array.new
    (2...num).each do |ele|
        answer.push(ele) if num % ele == 0
    end
    answer
end

p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
