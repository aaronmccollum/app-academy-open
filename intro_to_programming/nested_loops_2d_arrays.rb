# Write a method combinations that takes in an array of unique elements, the method should
# return a 2D array representing all possible combinations of 2 elements of the array.
def combinations(arr)
    answer = []
    
    arr.each_with_index do |num1, idx1|
        arr.each_with_index do |num2, idx2|
            if idx2 > idx1
                answer << [num1, num2]
            end
        end
    end
    
    answer
end


# Write a method opposite_count that takes in an array of unique numbers.
# The method should return the number of pairs of elements that sum to 0.
def opposite_count(nums)
    count = 0
    
    nums.each_with_index do |num1, idx1|
        nums.each_with_index do |num2, idx2|
            if idx2 > idx1
                if num1.abs() == num2.abs()
                    count += 1
                end 
            end
        end
    end
    
    count
end


# Write a method two_d_Sum that takes in a two dimensional array and returns the sum of all elements in the array.
def two_d_sum(arr)
    subarray_sums = []
    arr.each { |subarr| subarray_sums << sum_of_array(subarr) }
    sum_of_array(subarray_sums)
end
  
#Helper function to sum elements in one array
def sum_of_array(arr)
    sum = 0
    arr.each { |ele| sum += ele }
    sum
end


# Write a method two_d_translate that takes in a 2 dimensional array and translates it into a 1 dimensional array. 
# You can assume that the inner arrays always have 2 elements. See the examples.
def two_d_translate(arr)
    flat_array = []
    arr.each do |sub|
        sub.each do |ele|
            if sub.index(ele) == 0
                sub[1].times do
                    flat_array << sub[0]
                end
            else
                next
            end
        end
    end
    flat_array
end


# Write a method array_translate that takes in an array whose elements alternate between words and numbers.
# The method should return a string where each word is repeated the number of times that immediately follows in the array.
def array_translate(array)
    answer = []
    
    array.each_with_index do |ele, idx|
        if is_even?(idx) || idx == 0
            array[idx + 1].times do
                answer << ele
            end
        else
            next
        end
    end
  
    answer.join("")
end
# Helper function that returns 'true' for even numbers
def is_even?(num)
    return true if num % 2 == 0
    false
end