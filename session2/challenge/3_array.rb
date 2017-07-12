# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  
  def every_other_char
    
    arr = self.split('') # string to an array
    
    arr.values_at(* arr.each_index.select {|i| i % 2 == 0} ).join
    
    # arr.values_at(* even_index_numbers).back_to_string
    
  end
    
end


# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""