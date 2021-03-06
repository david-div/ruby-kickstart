# Write a function named mod_three which takes an array of numbers, 
# and return a new array consisting of their remainder when divided by three.
# Exclude any numbers which are actually dividible by three.

def mod_three (arr)
    
    new_array = []
    
    arr.each do |x|
        if x % 3 != 0
            new_array << x % 3
        end
    end
    
    new_array

end

=begin

# EXAMPLES:
p mod_three [0]  # => []
p mod_three [1]  # => [1]
p mod_three [2]  # => [2]
p mod_three [3]  # => []
p mod_three [4]  # => [1]
p mod_three [5]  # => [2]
p mod_three [6]  # => []
p mod_three [7]  # => [1]
#
p mod_three [0,1,2,3,4,5,6,7] # => [1, 2, 1, 2, 1]

=end
