# Write a method get_double_age that takes in a hash and returns twice the "age" value of the hash.
def get_double_age(hash)
    hash["age"] *= 2
end


# Write a method get_full_name that takes in a hash containing a first, last, and title.
# The method should return a string representing the hash's full name.
def get_full_name(hash)
    hash["first"] + " " + hash["last"] + ", the " + hash["title"]
end