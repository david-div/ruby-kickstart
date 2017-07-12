# Given an array of elements, return true if any element shows up three times in a row
# 
#

def got_three?(arr)

arr.each_cons(3) { |a, b, c| return true if a == b && b == c } 

false

end
   
# select not needed

=begin

# Examples:
p got_three? [1, 2, 2, 2, 3]  # => true
p got_three? ['a', 'a', 'b']  # => false
p got_three? ['a', 'a', 'a']  # => true
p got_three? [1, 2, 1, 1]     # => false

=end