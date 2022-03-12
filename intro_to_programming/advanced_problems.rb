# Write a method map_by_name  that takes in an array of hashes and returns a new array containing the names of each hash.
def map_by_name(arr)
    arr.map { |hash| hash["name"] }
end


# Write a method map_by_key that takes in an array of hashes and a key string.
# The method should returns a new array containing the values from each hash for the given key.
def map_by_key(arr, key)
    arr.map { |hash| hash[key] }
end