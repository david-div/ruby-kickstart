# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(n)

  to_return = {}
  
  1.upto n do |crnt_size|                       # range starting at 1 to n
    next if crnt_size.even?                     # next if even, i.e odd
    all   = Array.new(crnt_size) { |i| i + 1 }  # creating an array with the range
    evens = all.select { |i| i.even? }          # selecting only those in an array that are even
    to_return[crnt_size] = evens                # setting the hash
  end
  to_return


end

# return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.

p staircase 1  # => {1 => []}
p staircase 2  # => {1 => []}
p staircase 3  # => {1 => [], 3 => [2]}
p staircase 4  # => {1 => [], 3 => [2]}
p staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}
